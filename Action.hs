module Action where

import Player
import Team

import System.Random
import Control.Monad.State
import Data.Tuple
--import Debug.Trace

type MatchState = (([Player],[Player]) -- Current lineups
                  ,(Int,Int) -- Actions won
                  ,(Int,Int)) -- Goals scored

goals :: MatchState -> (Int,Int)
goals (_,_,g) = g

{-- Posession in percentage --}
posession :: MatchState -> (Double, Double)
posession (_,(homeActions, awayActions),_) =
  let ha = fromIntegral homeActions
      aa = fromIntegral awayActions
      homePossesion = (ha / (ha + aa)) * 100.0
  in (homePossesion, 100.0 - homePossesion)

posessionAsString :: MatchState -> String
posessionAsString ms = (show hp) ++ "-" ++ (show ap)
  where
    pos = posession ms
    hp = round . fst $ pos
    ap = round . snd $ pos

homeGoal :: MatchState -> MatchState
homeGoal (t,a,(homeGoals,awayGoals)) = (t,a,(homeGoals+1, awayGoals))

awayGoal :: MatchState -> MatchState
awayGoal (t,a,(homeGoals,awayGoals)) = (t,a,(homeGoals, awayGoals+1))

incHomeActions :: MatchState -> MatchState
incHomeActions (t,(homeActions,awayActions),g) = (t,(homeActions+1,awayActions),g)

incAwayActions :: MatchState -> MatchState
incAwayActions (t,(homeActions,awayActions),g) = (t,(homeActions,awayActions+1),g)

homeAction :: Int -> State MatchState ()
homeAction rnd = do
  modify incHomeActions
  (lineups,_,_) <- get
  if rnd <= scoreChance lineups then modify homeGoal else return ()

awayAction :: Int -> State MatchState ()
awayAction rnd = do
  modify incAwayActions
  (lineups,_,_) <- get
  if rnd <= scoreChance (swap lineups) then modify awayGoal else return ()

playAction :: (Int, Int) -> State MatchState ()
playAction (midRand,attRand) = do
  (lineups,_,_) <- get
  if midRand <= midfieldBalance lineups
    then homeAction attRand
    else awayAction attRand

playActions :: StdGen -> (Team,Team) -> MatchState
playActions randGen teams = do
  let (g1,g2) = split randGen
      minutes = 90
      midRands = take minutes $ randomRs (1,100) g1
      attRands = take minutes $ randomRs (1,100) g2
      actions = mapM_ playAction $ (zip midRands attRands)
  execState actions ((bestLineup (fst teams), bestLineup (snd teams)),(0,0),(0,0))
