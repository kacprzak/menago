module Team where

import Player

bestLineup :: [Player] -> [Player]
bestLineup p = concat [take 1 (bestOn Goalkeeper p)
                      ,take 4 (bestOn Defender p)
                      ,take 4 (bestOn Midfielder p)
                      ,take 2 (bestOn Forward p)]
