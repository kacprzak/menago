module Team where

import Player
import Data.List
import Data.Time

data Team = Team { name :: String
                 , players :: [Player]
                 }
            deriving (Show, Read)

bestLineup :: Team -> [Player]
bestLineup team = concat [take 1 (bestOn Goalkeeper p)
                         ,take 4 (bestOn Defender p)
                         ,take 4 (bestOn Midfielder p)
                         ,take 2 (bestOn Forward p)]
  where
    p = players team

averageSkill :: [Player] -> Double
averageSkill ps = fromIntegral (sum (map skill ps)) / genericLength ps

midfieldBalance :: ([Player], [Player]) -> Int
midfieldBalance teams = 50 -- % chance to win action

scoreChance :: ([Player], [Player]) -> Int
scoreChance ps = 2 -- % chance to score a goal

printTeamVsTeam :: Team -> Team -> IO ()
printTeamVsTeam homeTeam awayTeam = do
  currDate <- getCurrentTime  
  let d = utctDay currDate
  mapM_ putStrLn $ map (\(day,p1,p2) -> playerVsPlayer day p1 p2)
    $ zip3 (replicate 11 d) homeLineup awayLineup
  where
    homeLineup = bestLineup homeTeam
    awayLineup = bestLineup awayTeam
