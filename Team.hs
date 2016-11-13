module Team where

import Player
import Data.List

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
scoreChance ps = 5 -- % chance to score a goal
