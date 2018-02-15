Fitoban Progress Log
====================
This document contains information about our development progress with our 
Sokoban implementation in Pharo project. For more information about this project,
check the "README.md" file.

Week 1 (31. 9. 2017 - 6. 10. 2017)
----------------------------------
 * Brainstorming
 * Trying to get some basic understanding of Bloc (reading tutorials and trying things out)

 
Week 2 (7. 10. 2017 - 13. 10. 2017)
-----------------------------------
 * Created a package "SokobanGraphicalElements". Started implementing simple Bloc elements for objects in the game.
 * Started working on the game model, implementing classes for all the objects in the game. Working on the game logic, which will be later connected with the graphical elements.
  

Week 3 (14. 11. 2017 - 20. 11. 2017)
------------------------------------
 * Reimplementing the core to be more object-oriented. Created a design document to help us keep track.
 * Finished the simple graphical representation of the game. Currently the "SokobanGraphicalElement" package should provide all the necessary methods for creating and updating the view. Had some problems with redrawing elements, but got help from Aliaksei Syrel on Discord which helped us continue.
 

Week 4 (21. 11. 2017 - 27. 11. 2017)
------------------------------------
 * Merged the core together with the graphical representation (view). Currently, we can setup and play a various valid level.
 * Started implementing level/menu logic. Decided, that our current 'core' actually implements only a single round, so we renamed it to round, and we will develop a new 'core' package, that will handle the menu and other things. We want to develop a system of loading levels from textfiles, but for now levels are only hardcoded.


Week 5 (28. 11. 2017 - 4. 12. 2017)
------------------------------------
 * Enhancing the view to provide some stats. For example amount of current moves, amount of boxes currently on target (out of all boxes), and possibly other stuff that might be useful for the player. This could also encourage the players to replay the levels in order to solve them in less moves or less box pushes. Some sort of 'best score on this map' feature might be implemented later.
 * Created a new element which will represent a game window. We have decided to support maps up to 20*15 tiles for now. The game window will have fixed size (determined by the biggest possible map), and if smaller map is given, the space will be filled with background. Also, the main game window will contain a strip with the stats and a menu.
 * Started working on loading (and later possibly saving) levels and/or saved games. Our current aim is to store maps and saved games in text files with a certain format. We can then load any map only by processing it's representation in the text file. This would also give players the opportunity to create their own maps - you would be able to create maps by simply creating a text file in a certain format, and the game will then be able to process it into a playable map.
 * Continued working on the menu. The menu itself is now working, and should manage loading various levels, restarting the current level, undo last step, and possibly more in the future. We will have to merge it with the core and the graphical elements now though.

Week 6 (5. 12. 2017 - 11. 12. 2017)
------------------------------------
 * Added a text strip element into the game window, which will be used to display various information for the player, such as tips or other stuff.
 * Mostly finished the menu itself. It isn't integrated into the game window yer though, it's a standalone element for now. Also, while working on the menu, we started capturing keyboard input from the player using Bloc. Until now, we have been using some Morph functionality to handle keystrokes. We are using BlKeystrokeEvent now.
 * Added a new 'Map' package, which will handle loading maps from files. We will use a text representation for the maps. The package can load maps from files and will verify if the map is valid.
 * Fixed some bugs and started preparing the 'Round' package to work along the 'Map' package.

Week 7 (12. 12. 2017 - 18. 12. 2017)
------------------------------------
 * Integrated everything together. Currently, we basically have a playable version, which can load maps from files, let the player play those maps through, we count the moves and pushes, and also let the player undo his turns.
 * More bugfixing.

Week 8 (19. 12. 2017 - 25. 12. 2017)
------------------------------------
 * Worked on the menu, changed the layout a little bit.
 * Added 2D graphics instead of the Bloc shape graphics we have been using until now. We now support loading graphical tiles from .png files and using those in the gameview.
 * Some more bugfixing (mainly related to the Round and Map package).

Week 9 (26. 12. 2017 - 3. 1. 2018)
----------------------------------
 * Worked on the documentation which will be presented here in the 'Documentation' folder. Added some comments in the code.
 * Did some further testing and bugfixing. Removing some obsolete methods, adding default behaviour in some uncommon situations. Added further tests.
 * Reorganized methods in code into more logical protocols in some cases.
 * Added a few more maps.
