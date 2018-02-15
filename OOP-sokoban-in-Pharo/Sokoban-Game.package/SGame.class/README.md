I represent the playable game. 

You can start the game by sending the message start to SGame (So simply use "SGame start").

You can close the last opened game window by using "SGame instance close". This class could be implemented as a singleton, so only one instance of gamewindow would exist at any time and further start message sends wouldn't really do anything, as there is no point in having more than one game window opened at the same time, but the class isn't implemented as such for now.