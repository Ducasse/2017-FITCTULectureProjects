Documentation (WIP):  


Weekly report  

##### 4.1.18
* Done:
    1. Documentation done (see OOP documentation pdf)   
    2. Bug fixes for UI presenter.  
    https://docs.google.com/document/d/1aMn7L9Lqi1sSokb3DMIhLW64AfrDRtS0iF9UfKD2M1M/edit?usp=sharing 

##### 20.12.17  
* Done:
    1. Bug fixes
    2. All levels finilized.
    3. Graphical tweaks
    4. Test coverage increased
    5. Bestscore & automatic level switching added
* Plan for the next week:   
    1. Finilize code  
    2. Prepare documentation



##### 14.12.17  

* Done:
    1. Levels added. (Now we have 15)
    2. UI for main menu.
* Plan for the next week:   
    1. Automatic level switching  
    2. Keeping track of the best score 

##### 07.12.17  

* Done:
    1. Some kind of infobox where you can see moves counter, optimal score and "win" message is added.
    2. Possibility to restart level by pressing '5' is added.
    3. Possibility to go to the next level, when you've won the current one, by pressing 'n' is added.
    4. Keyboad control is added (wasd - to make moves)
    5. New UI, not finished yet
    6. Some levels were added
* Plan for the next week:  
    1. Continue working on graphics
    2. Add the main menu
    4. + some code refactoring would be nice to do as it seems like there are some methods which are not used at all
    5. and! (maybe the most important one) write lots of tests!

##### 30.11.17  

* Done:
    1. Level class added to separate it from the game class.
    2. Score count added.
    3. Drawing of separate cells of the board was added.
    4. Were trying to add a possibility to draw the whole board, but once the pharo froze and then just closed up. 
* Plan for the next week:  
    1. Continue to work on graphics
    2. Figure out file management for levels
    3. Add keyboard controlls potentially.
    4. Add the whole board drawing.

##### 23.11.17  

* Done:
    1. Bloc documentation from edux studied.  
    2. Game logic classes outlined.  
    3. Moving on board and box pushing logic added (w/ tests)(output on transcript).  
    4. Loading of level from file added 
* Plan for the next week:  
    1. Refine class architecture  
    2. Add logic for gameover  
    3. Add score count      
    4. Decide on model and view separation  
    

##### Usage example

```smalltalk
game := Game currentGame.
game present.

up := Direction up.
down := Direction down.
left := Direction left.
right := Direction right.

game move: up.
game move: left.
game move: down.
game move: right.
```
