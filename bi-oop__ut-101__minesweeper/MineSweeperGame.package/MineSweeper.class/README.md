Main class of the game.

intermediate:
(MineSweeper x: 16 y: 16 mines: 40) start

Základní architektura:
Modifikovaný MVC

4 podminky:
Singleton - Game (MineSweeper instance), Timer
GtInspector - Board view
Double dispatch - GtInspector (Board view)
Polymorfismus - Tiles
