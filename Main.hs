import qualified Player as P
import qualified PlayerDB as PDB
import qualified Team as T

import Data.Time

toNameAge :: Day -> P.Player -> String
toNameAge day p = name ++ " (" ++ age ++ ")"
  where
    name = P.name p
    age = show (P.age day p)

playerVsPlayer :: Day -> P.Player -> P.Player -> String
playerVsPlayer d p1 p2 = (toNameAge d p1) ++ "\t\tVs\t\t" ++ (toNameAge d p2)

printTeamVsTeam :: [P.Player] -> [P.Player] -> IO ()
printTeamVsTeam team1 team2 = do
  currDate <- getCurrentTime  
  let d = utctDay currDate
  mapM_ putStrLn $ map (\(d,p1,p2) -> playerVsPlayer d p1 p2) $ zip3 (replicate 11 d) team1 team2
  
main :: IO ()
main = do
  let legia = T.bestLineup PDB.legiaPlayers
      wisla = T.bestLineup PDB.wislaPlayers
  printTeamVsTeam legia wisla
  let avgSkill = show . T.averageSkill
  putStrLn $ "Avg skill: " ++ (avgSkill legia) ++ " Vs " ++ (avgSkill wisla)
