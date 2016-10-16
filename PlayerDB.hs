module PlayerDB where

import Prelude hiding (Either,Right,Left)
import Player

wislaPlayers =
  [Player "Michał Buchalik"           (1989,02,03)    190 83 Right Goalkeeper 72
  ,Player "Michał Miśkiewicz"         (1989,01,20)    194 92 Right Goalkeeper 70
  ,Player "Mateusz Zając I"           (1996,04,13)    193 80 Right Goalkeeper 55
  ,Player "Łukasz Załuska"            (1982,06,16)    190 88 Right Goalkeeper 68
  ,Player "Jakub Bartosz"             (1996,08,13)    183 76 Right Defender   65
  ,Player "Michał Czekaj"             (1992,02,13)    195 83 Right Defender   52
  ,Player "Arkadiusz Głowacki"        (1979,03,13)    186 78 Right Defender   74
  ,Player "Richárd Guzmics"           (1987,04,16)    190 88 Right Defender   82
  ,Player "Boban Jović"               (1991,06,25)    178 69 Both  Defender   78
  ,Player "Krystian Kujawa"           (1996,03,22)    192 80 Right Defender   52
  ,Player "Adam Mójta"                (1986,06,30)    178 70 Left  Defender   68
  ,Player "Rafał Pietrzak"            (1992,01,30)    176 69 Both  Defender   62
  ,Player "Maciej Sadlok"             (1989,06,29)    186 80 Left  Defender   73
  ,Player "Piotr Żemło"               (1995,07,10)    190 76 Left  Defender   51
  ,Player "Rafał Boguski"             (1984,06,09)    173 70 Right Midfielder 68
  ,Player "Petar Brlek"               (1994,01,29)    180 74 Right Midfielder 72
  ,Player "Tomasz Cywka"              (1988,06,27)    180 76 Both  Midfielder 53
  ,Player "Patryk Małecki"            (1988,08,01)    170 70 Both  Midfielder 78
  ,Player "Krzysztof Mączyński"       (1987,05,23)    175 66 Right Midfielder 82
  ,Player "Denis Popovič"             (1989,10,15)    187 75 Right Midfielder 68
  ,Player "Alan Uryga"                (1994,02,19)    191 85 Right Midfielder 66
  ,Player "Paweł Brożek"              (1983,04,21)    180 72 Right Forward    72
  ,Player "Krzysztof Drzazga"         (1995,06,20)    179 69 Right Forward    65
  ,Player "Zdeněk Ondrášek"           (1988,12,22)    185 79 Right Forward    79
  ,Player "Adrian Wójcik"             (1996,02,22)    178 69 Right Forward    50
  ,Player "Mateusz Zachara"           (1990,03,27)    180 75 Right Forward    70
  ]

legiaPlayers =
  [Player "Maciej Bąbel"              (1998,02,12)    189 80 Right Goalkeeper 52
  ,Player "Radosław Cierzniak"        (1983,04,24)    187 81 Right Goalkeeper 80
  ,Player "Dominik Kąkolewski"        (1996,06,04)    (-1) (-1)  Right Goalkeeper 54
  ,Player "Radosław Majecki"          (1999,11,16)    191 78 Right Goalkeeper 54
  ,Player "Arkadiusz Malarz"          (1980,06,19)    190 86 Right Goalkeeper 79
  ,Player "Bartosz Bereszyński"       (1992,07,12)    182 72 Right Defender   67
  ,Player "Łukasz Broź"               (1985,12,17)    180 74 Right Defender   68
  ,Player "Jakub Czerwiński"          (1991,08,06)    183 75 Right Defender   65
  ,Player "Maciej Dąbrowski"          (1987,04,20)    194 88 Right Defender   66
  ,Player "Adam Hloušek"              (1988,12,20)    187 76 Left  Defender   72
  ,Player "Michał Pazdan"             (1987,09,21)    180 78 Both  Defender   83
  ,Player "Jakub Rzeźniczak"          (1986,10,26)    183 82 Right Defender   61
  ,Player "Mateusz Wieteska"          (1997,02,11)    187 77 Right Defender   55
  ,Player "Michaił Aleksandrow"       (1989,06,11)    180 74 Both  Midfielder 67
  ,Player "Guilherme"                 (1991,05,21)    174 70 Left  Midfielder 74
  ,Player "Kasper Hämäläinen"         (1986,08,08)    187 74 Left  Midfielder 77
  ,Player "Tomasz Jodłowiec"          (1985,09,08)    190 86 Right Midfielder 78
  ,Player "Waleri Kazaiszwili"        (1993,01,29)    183 74 Right Midfielder 76
  ,Player "Michał Kopczyński"         (1992,06,15)    180 70 Both  Midfielder 62
  ,Player "Michał Kucharczyk"         (1991,03,20)    178 72 Right Midfielder 73
  ,Player "Steeven Langil"            (1988,03,04)    178 67 Right Midfielder 76
  ,Player "Thibault Moulin"           (1990,01,13)    173 68 Right Midfielder 75
  ,Player "Tomasz Nawotka"            (1997,02,14)    178 72 Right Midfielder 50
  ,Player "Vadis Odjidja-Ofoe"        (1989,02,21)    185 79 Right Midfielder 79
  ,Player "Miroslav Radović"          (1984,01,16)    182 78 Right Midfielder 71
  ,Player "Sebastian Szymański"       (1999,05,10)    174 58 Left  Midfielder 50
  ,Player "Stojan Vranješ"            (1986,10,11)    183 75 Left  Midfielder 70
  ,Player "Sandro Kulenović"          (1999,12,04)    188 76 Right Forward    50
  ,Player "Nemanja Nikolić"           (1987,12,31)    180 80 Both  Forward    86
  ,Player "Aleksandar Prijović"       (1990,04,21)    191 83 Right Forward    77
  ,Player "Adam Ryczkowski"           (1997,04,30)    178 69 Right Forward    58
  ,Player "Sadam Sulley"              (1996,10,16)    190 (-1) Right Forward    51
  ]
