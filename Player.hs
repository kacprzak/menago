module Player where

import Data.Time.Calendar

data StrongerFoot = Left | Right | Both
  deriving (Show, Read)

data Position = Goalkeeper | Defender | Midfielder | Forward
  deriving (Show, Read)

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
    
