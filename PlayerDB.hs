module PlayerDB where

import qualified Player as P

wislaPlayers =
  [P.Player "Michał Buchalik"           (1989,02,03)    190 83 P.Right P.Goalkeeper 72
  ,P.Player "Michał Miśkiewicz"         (1989,01,20)    194 92 P.Right P.Goalkeeper 70
  ,P.Player "Mateusz Zając I"           (1996,04,13)    193 80 P.Right P.Goalkeeper 55
  ,P.Player "Łukasz Załuska"            (1982,06,16)    190 88 P.Right P.Goalkeeper 68
  ,P.Player "Jakub Bartosz"             (1996,08,13)    183 76 P.Right P.Defender   65
  ,P.Player "Michał Czekaj"             (1992,02,13)    195 83 P.Right P.Defender   52
  ,P.Player "Arkadiusz Głowacki"        (1979,03,13)    186 78 P.Right P.Defender   74
  ,P.Player "Richárd Guzmics"           (1987,04,16)    190 88 P.Right P.Defender   82
  ,P.Player "Boban Jović"               (1991,06,25)    178 69 P.Both  P.Defender   78
  ,P.Player "Krystian Kujawa"           (1996,03,22)    192 80 P.Right P.Defender   52
  ,P.Player "Adam Mójta"                (1986,06,30)    178 70 P.Left  P.Defender   68
  ,P.Player "Rafał Pietrzak"            (1992,01,30)    176 69 P.Both  P.Defender   62
  ,P.Player "Maciej Sadlok"             (1989,06,29)    186 80 P.Left  P.Defender   73
  ,P.Player "Piotr Żemło"               (1995,07,10)    190 76 P.Left  P.Defender   51
  ,P.Player "Rafał Boguski"             (1984,06,09)    173 70 P.Right P.Midfielder 68
  ,P.Player "Petar Brlek"               (1994,01,29)    180 74 P.Right P.Midfielder 72
  ,P.Player "Tomasz Cywka"              (1988,06,27)    180 76 P.Both  P.Midfielder 53
  ,P.Player "Patryk Małecki"            (1988,08,01)    170 70 P.Both  P.Midfielder 78
  ,P.Player "Krzysztof Mączyński"       (1987,05,23)    175 66 P.Right P.Midfielder 82
  ,P.Player "Denis Popovič"             (1989,10,15)    187 75 P.Right P.Midfielder 68
  ,P.Player "Alan Uryga"                (1994,02,19)    191 85 P.Right P.Midfielder 66
  ,P.Player "Paweł Brożek"              (1983,04,21)    180 72 P.Right P.Forward    72
  ,P.Player "Krzysztof Drzazga"         (1995,06,20)    179 69 P.Right P.Forward    65
  ,P.Player "Zdeněk Ondrášek"           (1988,12,22)    185 79 P.Right P.Forward    79
  ,P.Player "Adrian Wójcik"             (1996,02,22)    178 69 P.Right P.Forward    50
  ,P.Player "Mateusz Zachara"           (1990,03,27)    180 75 P.Right P.Forward    70
  ]

legiaPlayers =
  [P.Player "Maciej Bąbel"              (1998,02,12)    189 80 P.Right P.Goalkeeper 52
  ,P.Player "Radosław Cierzniak"        (1983,04,24)    187 81 P.Right P.Goalkeeper 80
  ,P.Player "Dominik Kąkolewski"        (1996,06,04)    (-1) (-1)  P.Right P.Goalkeeper 54
  ,P.Player "Radosław Majecki"          (1999,11,16)    191 78 P.Right P.Goalkeeper 54
  ,P.Player "Arkadiusz Malarz"          (1980,06,19)    190 86 P.Right P.Goalkeeper 79
  ,P.Player "Bartosz Bereszyński"       (1992,07,12)    182 72 P.Right P.Defender   67
  ,P.Player "Łukasz Broź"               (1985,12,17)    180 74 P.Right P.Defender   68
  ,P.Player "Jakub Czerwiński"          (1991,08,06)    183 75 P.Right P.Defender   65
  ,P.Player "Maciej Dąbrowski"          (1987,04,20)    194 88 P.Right P.Defender   66
  ,P.Player "Adam Hloušek"              (1988,12,20)    187 76 P.Left  P.Defender   72
  ,P.Player "Michał Pazdan"             (1987,09,21)    180 78 P.Both  P.Defender   83
  ,P.Player "Jakub Rzeźniczak"          (1986,10,26)    183 82 P.Right P.Defender   61
  ,P.Player "Mateusz Wieteska"          (1997,02,11)    187 77 P.Right P.Defender   55
  ,P.Player "Michaił Aleksandrow"       (1989,06,11)    180 74 P.Both  P.Midfielder 67
  ,P.Player "Guilherme"                 (1991,05,21)    174 70 P.Left  P.Midfielder 74
  ,P.Player "Kasper Hämäläinen"         (1986,08,08)    187 74 P.Left  P.Midfielder 77
  ,P.Player "Tomasz Jodłowiec"          (1985,09,08)    190 86 P.Right P.Midfielder 78
  ,P.Player "Waleri Kazaiszwili"        (1993,01,29)    183 74 P.Right P.Midfielder 76
  ,P.Player "Michał Kopczyński"         (1992,06,15)    180 70 P.Both  P.Midfielder 62
  ,P.Player "Michał Kucharczyk"         (1991,03,20)    178 72 P.Right P.Midfielder 73
  ,P.Player "Steeven Langil"            (1988,03,04)    178 67 P.Right P.Midfielder 76
  ,P.Player "Thibault Moulin"           (1990,01,13)    173 68 P.Right P.Midfielder 75
  ,P.Player "Tomasz Nawotka"            (1997,02,14)    178 72 P.Right P.Midfielder 50
  ,P.Player "Vadis Odjidja-Ofoe"        (1989,02,21)    185 79 P.Right P.Midfielder 79
  ,P.Player "Miroslav Radović"          (1984,01,16)    182 78 P.Right P.Midfielder 71
  ,P.Player "Sebastian Szymański"       (1999,05,10)    174 58 P.Left  P.Midfielder 50
  ,P.Player "Stojan Vranješ"            (1986,10,11)    183 75 P.Left  P.Midfielder 70
  ,P.Player "Sandro Kulenović"          (1999,12,04)    188 76 P.Right P.Forward    50
  ,P.Player "Nemanja Nikolić"           (1987,12,31)    180 80 P.Both  P.Forward    86
  ,P.Player "Aleksandar Prijović"       (1990,04,21)    191 83 P.Right P.Forward    77
  ,P.Player "Adam Ryczkowski"           (1997,04,30)    178 69 P.Right P.Forward    58
  ,P.Player "Sadam Sulley"              (1996,10,16)    190 (-1) P.Right P.Forward    51
  ]
