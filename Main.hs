import qualified Player as P
import qualified Team as T
import qualified TeamDB as TDB

import Data.Time
import System.IO

toNameAge :: Day -> P.Player -> String
toNameAge day p = name ++ " (" ++ age ++ ")"
  where
    name = P.name p
    age = show (P.age day p)

playerVsPlayer :: Day -> P.Player -> P.Player -> String
playerVsPlayer d p1 p2 = (toNameAge d p1) ++ "\t\tVs\t\t" ++ (toNameAge d p2)

printTeamVsTeam :: T.Team -> T.Team -> IO ()
printTeamVsTeam team1 team2 = do
  currDate <- getCurrentTime  
  let d = utctDay currDate
  mapM_ putStrLn $ map (\(day,p1,p2) -> playerVsPlayer day p1 p2)
    $ zip3 (replicate 11 d) lineup1 lineup2
  where
    lineup1 = T.bestLineup team1
    lineup2 = T.bestLineup team2

playGame :: IO ()
playGame = do
  let legia = TDB.legia
      wisla = TDB.wisla
  putStrLn $ (T.name legia) ++ " Vs " ++ (T.name wisla)
  let avgSkill = show . (round :: Double -> Int) . T.averageSkill . T.bestLineup
  putStrLn $ "Avg skill: " ++ (avgSkill legia) ++ " Vs " ++ (avgSkill wisla)
  printTeamVsTeam legia wisla

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
