module Team where

import Player

bestLineup :: [Player] -> [Player]
bestLineup p = take 11 p

--bestGoalkeeper :: [Player] -> Player
--bestGoalkeeper ps = head $ map sort & groupBy (\)

