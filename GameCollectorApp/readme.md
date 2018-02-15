# Game Collector App
## Task definition 
> note task definition might be little changed

> so this paragraph is not final

Description: The goal of this project is to develop a little application (web or desktop) that supports the management of games (PS3, PS4, PS2, Wii). Describing games, managing different collections such as the games lent, that 	we are looking for, ... In addition it would be good to expose the collection on the web. Saving the collection can be done using the STON serialiser. Now other means such as using Voyage to talk to MongoDB is a possibility (Check the Voyage booklet https://books.pharo.org).
Link and resources: Have a look at the Spec UI framework book available at http://books.pharo.org for a desktop version. For a web solution http://book.seaside.st offers a free book on the seaside web frameworks - with REST integration.

## First week
- We decided to read documentation and get familiar with frameworks.
Namely Seaside and STON.
- We implemented basic structer of classes.

###### Goals for next week
- Decide what DBMS to use.
- Discuss functional requirements in our web application.
- Construct a domain model.
- Discuss OO design in our work.
- Continue with implemention.
- Hopefully implement some proof of concept - working first site where data on site is from database.

> 16.11. 2017 16:40

## Week #2
- We decided to use MongoDB and Voyage persistence, but we are using just in-memory layer until we start a database server.
- Game class is now savable.

> We can save game instances into in-memory database

- If Seaside server is running you can list games names through /examples/games in web browser.

###### Goals for next week
- Somehow connect to MongoDB server. We have two options use their cloud or make our own server.
- Refactor Game class. In future we would like to obtain data about games from https://www.igdb.com/api
- Make class for installation Seaside, MongoDB and for starting the Seaside server.
- Get more into Seaside and rendering sites to start making front end of our webapp.

> 23.11. 2017 23:54

## Week #3
- Template form created with Seaside

> It is just an example of form which will be further transformed into form for adding a game

- Database class with testing is more functional now

> We added methods for adding, finding and deleting games from db in class GameDB (class for database connection and db API) and tests for these methods
Our database is still just in-memory.

- Game class now has actions which can change the state of the class based on previous state

> Every game has a state. Game can be lost, bought, borrowed etc. These states can be changed by calling an action on a game instance.

- Updated dependencies of project

###### Goals for next week
- Write more tests
- Game class rendering for website

> We need to start with frontend implementation. So in next week we want to figure out how to render single game - name, game state, picture and stuff around it.

- We should think more game states design (maybe history of states or smth alike) and what information should a state includes
- Connect data from igdb with game class - transform JSON data to our app

> Find out how to take JSON data from igdb API (this site has database of games and we want to get infromations and images for games in our application) and transform this JSON and add them into our game class

.

> 30.11. 2017 22:55

 

> edited 1.12. 2017


## Week #4
- Demo web app was created. Through /examples/form form we can add a new game. All games in database can be viewed at /examples/games. And game can be viewed when clicked from /examples/games.
- On a game can be performed actions from a browser. Action can change state of the game, however you cannot pass data to these states yet. For example - if you buy game this game is in a bought state and if a friend wants to lend this game you can change the state of this game to lended but you cannot (yet) specify to whom you lended the game.


###### Goals for next week
- Write more tests
- Connect data from igdb with game class - transform JSON data to our app

> Find out how to take JSON data from igdb API (this site has database of games and we want to get infromations and images for games in our application) and transform this JSON and add them into our game class

- We need to think of better interface for changing states of a game
- Make the site more pretty with css framework - maybe bootstrap

> 8.12. 2017 00:43

## Week #5
- Style of components were added -- few css tags were added.
- Header containing menu of our web was added and integrated into class. Components representing web pages should iherit from TBScreenComponent.
- We added bootstrap framework into our web app. Thanks to this frontend looks better.

> https://github.com/astares/Seaside-Bootstrap

- Changing states of the game will be done by modal windows from bootstrap framework. For some reason callbacks on buttons don't work. So web looks better however is less functional.
- We were working on igdb integration, but it doesn't work yet. Hopefuly we will add this feature in next week.

###### Goals for next week
- Write more tests
- Connect data from igdb with game class - transform JSON data to our app
- Resolve issues with buttons and make changing states actions work from browser
- Custom attributes of games

> 15.12. 2017 12:00

## Week #6
- Data - such as thumbnail of game, description, release date - from igdb api can be retrieved from website.
- Dropdown menu with actions for changing state on a game now shows only valid options. (eg. if the game is lost it doesnt show an option to lose this game again)

###### Goals for next week
- Tests
- Make table with games sortable, by name, state and so on
- Custom attributes of games
- Edit game page - so we can edit attributes of a game from website (we somehow forgot this one)

## Week #7
- Custom attributes of games were added. Now you can create key-value attribute. Added attributes can be deleted. This can be done by using edit form of the game.
- Edit game form where user can edit some attributes was added.
- Tests
- Table of all games is sortable by name

> 22.12. 2017 14:33
Application documentation
https://docs.google.com/document/d/19TL0RKmLtAZdAm_1j45m4yzZgEPVKYFjWuGdeEGuIs8/edit#