module Action where

import Player
import Team

import System.Random
import Control.Monad.State

type MatchState = (([Player],[Player]), (Int,Int))

homeGoal :: MatchState -> MatchState
homeGoal (teams, (homeGoals,awayGoals)) = (teams, (homeGoals+1, awayGoals))

awayGoal :: MatchState -> MatchState
awayGoal (teams, (homeGoals,awayGoals)) = (teams, (homeGoals, awayGoals+1))

playAction :: Int -> State MatchState ()
playAction rand = do
  (lineups, _) <- get
  if rand <= midfieldBalance lineups
    then if rand <= (scoreChance lineups) then modify homeGoal else return ()
    else if rand > (100 - scoreChance lineups) then modify awayGoal else return ()

playActions :: StdGen -> (Team,Team) -> MatchState
playActions randGen teams = do
  let rands = (take 90 $ randomRs (1,100) randGen)::[Int]
      actions = mapM_ playAction rands
  execState actions ((bestLineup (fst teams), bestLineup (snd teams)),(0,0))
