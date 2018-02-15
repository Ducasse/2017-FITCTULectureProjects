# Mine Sweeper using Bloc
A classical Windows game based on the Bloc framework
From Marek Reimer, David Mokoš, Lukáš Hrachovina

## Example
[Video](https://youtu.be/vioKRhvi5tU)

## Semestral work topic

### Mine Sweeper using Bloc
- Description: The goal of this project is to develop a Minersweeper game. The application should be able to load levels, collect points... In addition, the placements of the bomb should not be random. The user should not be in a situation where he cannot deduce if there is a bomb or not. https://juliendelplanque.be proposes a Pharo model for a mine sweeper and it may be useful to have a look at it.
- Possible contacts: Stéphane Ducasse and Aliaksei Syrel
- Link and resources: Read the Bloc MemoryGame booklet available at http://books.pharo.org.

### Our implemented functionalities
- The game is opened in a Pharo window
- The first screen is choosing the difficulty level
- Players can select from 4 difficulty levels:
 - Easy (size 10x10 with 10 mines)
 - Medium (size 10x15 with 30 mines)
 - Hard (size 10x15 with 50 mines)
 - Extreme (size 20x20 with 300 mines)
- The difficulty level is selected in the GUI
- left click is used to uncover a field
 - If the uncovered field is a regular field without a mine and does not have any surrounding mines, it uncovers also all its neighbours
 - If the field is a regular field without a mine, it is uncovered and the number of surrounding mines is shown on it
 - If the field is a mine, the field is uncovered along with all the other fields and the player is notified that they lost the game. They can then click on the `New Game` button and get back to the difficulty selection screen
 - If the field is already uncovered and the number on it corresponds to the number of marked surrounding fields (means that the playes has marked all the bombs nearby), a left click uncovers all unmarked surrounding fields
- A player uses a right click to mark fields where they suspect bombs to be hidden
 - If there is a field with more marked neighbours than the number shown on the field, players are notified by a color change of the uncovered field
- The first field that player uncovers has always 0 mines surrounding it. This is achieved by distributing the mines after the player uncovers the first field.
- The player is notified when he wins or looses

### What we did not implement
- The mine distribution algorithm is purely random. Mine distribution is a NP-complete problem. For better mine distribution, we would have to implement a solver, that would tell us, if the current mine distribution is always solvable.
- Players play for victory, no score is calculated.

### Design patterns
The following design patterns have been used in this project:
- Polymorphism
 - MSGameField handling
- Observer
 - MSFieldEventListener
- Template
 - MSField leftClick (calls abstract leftClickOnField, which is defined in subclasses)
- Composite
 - MSGrid prepareGrid


## Installation

The following script installs a **stable** version of Bloc intended for [Pharo 6.1](https://pharo.org/download):<br>

```smalltalk
Metacello new
   baseline: 'Bloc';
   repository: 'github://pharo-graphics/Bloc:pharo6.1/src';
   load: #core
```

## Game start

The following script runs the Minesweeper game (given that you have this package in your image): <br>

```smalltalk
MSGameStartView start.
```

## Reports

### Report 20.11.2017
- We have created a package in the repository
- We have managed to clone the repository into our Pharo images
- We have been learning the Bloc framework, trying the examples
- We have discussed the class model of the minesweeper and created a draft of the class diagram
- We have created few classes from the diagram and we have divided the work among the team

Here is the draft of a class diagram:
![Alt text](documentation/oop-minesweeper.png?raw=true "Diagram")

### Report 1.12.2017
- We have read the Pharo booklet "Building a memory game with Bloc"
- We have updated the diagram according to the ViewModel principles
- We have continued with the implementation of the game logic

Here is the draft of a class diagram:
![Alt text](documentation/oop-minesweeper-v2.png?raw=true "Diagram v2")

### Report 5. 12. 2017
- Primitive distribution of mines
- Calculating adjacent mines
- Drawing the grid

#### TODO:
- Improve mine distribution algorithms
- Clean up code calculating number of adjacent mines
- Fix errors when drawing the grid
 - Incorrect font size (sometimes, it's weird)
 - Figure out drawing circles over squares (for mines)
 - Grid background color
- Write tests

Font size error mentioned above  
![Alt text](images/incorrect_font_size.png?raw=true "Strange font size error")

### Report 13. 12. 2017

#### Changes:
- Clean up code calculating number of adjacent mines
- Fix errors when drawing the grid
 - The font size is correct
 - Drawing circles over squares (for mines)
 - Grid background color
- Uncovering of the field with zero neighbour mines uncovers also the neighbours
- Added action to left click - uncover field
- Added marking functionality on right click
- Introduced announcers
- There is an action when the game is over
- There is an action when user wins
- The grid is set up (bombs placed) after the first click
- The bomb is never in the neighbourhood of the first click.
- Added ability to have rectangular play fields
- Adjusted difficulties
- Add neighbour set to fields allowing for easier calulation and uncovering of them
- Removed zero field classes
- Added the start button and the functionality to restart the game
- Made changes in the UI - The drawing of the covered field and the marked field
- Fixed bug where bombs were not placed in the bottom row and right column
- Opening of the game in the new window
- Categorized classes
- We have started the work on the tests
- Added a feature for uncovering all the neighbours when clicked on the uncovered field with correct number of marked neighbours (Allows player to make mistakes)
- Added a feature that notifies the player that he marked more neighbour fields than he should
- And a lot of refactoring


#### TODO:
- Improve mine distribution algorithms
- Continue with writing the tests
- Fix UI issues happening on only some machines

![Alt text](images/playscreen.png?raw=true "Play")
![Alt text](images/gameoverscreen.png?raw=true "Game over")
![Alt text](images/alert.png?raw=true "Alert")

### Report 5. 1. 2018

#### Changes:
- 57% Test coverage
- Added a window for choosing the difficulty level
- And a lot of refactoring
arked neighbours (Allows player to make mistakes)
- Added a feature that notifies the player that he marked more neighbour fields than he should
- And a lot of refactoring


#### TODO:
- Improve mine distribution algorithms
- Continue with writing the tests
- Fix UI issues happening on only some machines

![Alt text](images/playscreen.png?raw=true "Play")
![Alt text](images/gameoverscreen.png?raw=true "Game over")
![Alt text](images/alert.png?raw=true "Alert")

### Report 5. 1. 2018

#### Changes:
- 57% Test coverage
- Added a window for choosing the difficulty level
- Documentation
- And a lot of refactoring
