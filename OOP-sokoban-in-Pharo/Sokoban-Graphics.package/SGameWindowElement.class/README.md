I represent a window with our game. The window will contain three elements: the game view itself, the menu and the Textstrip.

The game view itself is an instance of SMapElement. It displays the map and all the moves to the player. When a message 'redrawElementXYOn:And:' is sent to the game window, it is delegated to the game view.

The menu is used for various things. It displays the amount of moves, pushes (box moves) and amount of box on target (out of all the boxes). It also allows the player to perform various operations, such as loading a new map, restarting the map, or undoing his last turn.

Then there is the textstrip, which is located in the bottom, and it is used to display important information to the player. You can display strings in the Textstrip by sending the 'setTextstrip:' message to the game window instance.