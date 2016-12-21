import qualified Team as T
import qualified TeamDB as TDB
import Action

import System.IO
import System.Random

playGame :: IO ()
playGame = do
  let legia = TDB.legia
      wisla = TDB.wisla
  putStrLn $ (T.name legia) ++ " Vs " ++ (T.name wisla)
--  let avgSkill = show . (round :: Double -> Int) . T.averageSkill . T.bestLineup
--  putStrLn $ "Avg skill: " ++ (avgSkill legia) ++ " Vs " ++ (avgSkill wisla)
--  printTeamVsTeam legia wisla
  g <- newStdGen
  let matchState  = playActions g (legia,wisla)
      score = goals matchState
  putStrLn $ "Posession: " ++ posessionAsString matchState
  putStrLn $ "Score:     " ++ show (fst score) ++ "-" ++ show (snd score)

prompt :: IO (String)
prompt = putStr "> " >> hFlush stdout >> getLine
  
handleMainMenu :: String -> IO ()
handleMainMenu "1" = playGame
handleMainMenu "2" = return ()
handleMainMenu _ = putStrLn "Unknown option! Try again."

mainMenu :: IO ()
mainMenu = do
  putStrLn $
    "1. New game\n" ++
    "2. Exit"
  ch <- prompt
  handleMainMenu ch
  if ch == "2" then return () else mainMenu

main :: IO ()
main = putStrLn "Menago v0.1" >> mainMenu
