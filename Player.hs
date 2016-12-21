module Player where

import Data.Time.Calendar
import Data.List
import Text.Printf

data StrongerFoot = Left | Right | Both
  deriving (Show, Read)

data Position = Goalkeeper | Defender | Midfielder | Forward
  deriving (Show, Read, Eq)

data Player = Player { name :: String
                     , birth :: (Integer, Int, Int)
                     , height :: Int
                     , weight :: Int
                     , strongerFoot :: StrongerFoot
                     , position :: Position
                     , skill :: Int
                       }
            deriving (Show, Read)

age :: Day -> Player -> Integer
age currDate player = age' (toGregorian currDate) (birth player)
  where
    age' (y, m, d) (y2, m2, d2)
      | m > m2 = y - y2
      | m == m2 && d >= d2 = y - y2
      | otherwise = y - y2 - 1

sortBySkill :: [Player] -> [Player]
sortBySkill = sortBy (\x y -> (skill y) `compare` (skill x))

filterByPosition :: Position -> [Player] -> [Player]
filterByPosition pos = filter (\p -> (position p) == pos)
    
bestOn :: Position -> [Player] -> [Player]
bestOn pos ps = sortBySkill $ filterByPosition pos ps

toNameAge :: Day -> Player -> String
toNameAge day p = name p ++ " (" ++ playerAge ++ ")"
  where
    playerAge = show (age day p)

playerVsPlayer :: Day -> Player -> Player -> String
playerVsPlayer d p1 p2 = printf "%36s %36s" (toNameAge d p1) (toNameAge d p2)
