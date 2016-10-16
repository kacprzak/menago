import qualified Player as P
import qualified PlayerDB as PDB

import Data.Time

toNameAge :: Day -> P.Player -> String
toNameAge day p = name ++ " (" ++ age ++ ")"
  where
    name = P.name p
    age = show (P.age day p)

main :: IO ()
main = do
  currDate <- getCurrentTime
  mapM_ (putStrLn . toNameAge (utctDay currDate)) PDB.wislaPlayers
