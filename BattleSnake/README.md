# BATTLE SNAKE client (http app)

## Installation instructions:

https://github.com/StemboltHQ/battle_snake

## DOCUMENTATION:

### Architecture:

This is our first design of application.
It introduced some concepts which were lately abandoned (async callbacks) but rest is implemented as illustrated here.
[diagram](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/blob/master/images/IMG_20171107_141835.jpg)

### Architecture decisions:

In this place I would like to introduce some architecture decisions. Some were good and important for elegant and simple implementation. Some were interesting and sounded cool but in reality, it would be complicated to implement them or use them.

One of the not-so-good ones is async handler pattern. Basicaly it can be described as a way to implement request handling in asynchronous manner. Initially it seems as a very reasonable idea to implement asynchronous request handling. Not only it would provide very clean way to write code (declarative style rather then imperative), it would also support timeout feature for aborting callbacks after certain time has passed, so it would not steal computing time. Additionaly it would allow us to run more than one decision searching algorithm concurently and simply chose the best one.
Drawbacks of that pattern was non trivial integration with existing tools (TeaPot) and mainly additional overhead which would be necessary for supervising concurent run of many algorithms, finally then, deciding which result is "the best one".
We chose to not integrate this pattern in our application. We already implemented it, so we left it in repository as a proof.

On the other hand, we consider introducing polymorphism and strategy pattern especially wise, mostly because they stricly and expresively hold structure of solution and make it easy to understand what we were trying to achieve. Even in small project, the right design pattern pays itself.

### Design patterns:

* Strategy pattern ([Move Handler](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/blob/master/BattleSnake.package/MoveHandler.class/instance/handle..st))
```st
use: aAlgorithm
  |instance|
  instance := self new.
  instance algorithm: aAlgorithm.
  ^ instance.
```

* GTInspector ([PlayerInfo](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/blob/master/BattleSnake.package/PlayerInfo.class/instance/gtInspectorDetailsIn..st))
```st
gt-inspector-extension
gtInspectorDetailsIn: composite
  <gtInspectorPresentationOrder: 30>
  ^ composite table
    title: [ 'Details' ];
    display: [ {
      'name' -> self name.
      'taunt' -> self taunt.
      'color' -> (self colorAsMorph: (self color)).
      'secondary color' -> (self colorAsMorph: (self secondaryColor)).
                                    ...
```

* Polymorphism ([Handlers](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/tree/master/BattleSnake.package/AbstractHandler.class))
```st
accessing
handle: aData
  ^self shouldBeImplemented 
```

* NULL Object Pattern ([NULLAlgorithm](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/tree/master/BattleSnake-Algorithm.package/NULLAlgorithm.class))
```st
calculating
nextMoveWithMap: aMap beginning: aPoint
  ^''
```
it is used as null inside initialize of MoveHandler:
```st
initialization
initialize
  self algorithm: NULLAlgorithm new .
```

## Week reports:

#### 4. 11. 2017
We met online for first time - we chose toppic and dicussed first design steps.
We also set up trello for better work assignment in future.

#### 13. 11. 2017
We met personaly at school, chat about design and patterns and designed application.
We collectively agreed on main architecture and some patterns. We believed asynchronous handling would be the best way as it offers some elegant, clean and safe features. Lately we descovered this would require us to write our own timed and time limited asynchronous callbacks. One member of our team was dedicated enterily to writing asynchronous timers (let's call it timers for sake of simplicity), the rest stared their work on application itself.
So we are currently working on two tasks:

* Asynchronous timers
* Initialize http communication with BattleSnake server

So currently our task is being handled from top (http communication as first step of implementation) and from inside (timer utility).

#### 20. 11. 2017
Some more chatting about next steps.
Team behing https communication implemented request handling using good OOP practices.
We introduced Abstract handler and two kind of specialized handlers.
Package Teapot was used for http communication as it met all our requirements.
Meanwhile our asynchronous timers were pushed to repository. In stage alpha it ilustrates basic features and usage.

#### 27. 11. 2017
Testing were introduced for first time.
Our asynchronous gyu discovered fatal incompatibility of his work with concept of our application. Back to the drawing board.

#### 4. 12. 2017
Test were added. Basically stil working on timers, now with correct design and around Teapot.
Work on algorithm for snake's movenet has begun. We again implemented abstract algorithm with strategy pattern in mind.
Our first dummy algorithm was pushed into repo.

In this week we also discovered we will not be able to use asynchronous timers. Mainly because our async guy (author of this readme) was too slow with his work - or rather - because of initial mistake Limited Process class was not completed in time and other members of team already implemented great part of application which should be using async timers. Lately was also descovered by that dedicated member of team, that even if it was completed in time, it could not be used because of Teapot default interface.

#### 11. 12. 2017
A lot of refactoring. Renaming and moving definitions and code to better place.
We also implemented very first version of BFS algorithm for snake movement.

#### 18. 12. 2017
GTInspector extension was implemented for class PlayerInfo - for better analytics.

#### 25. 12. 2017
Not much progress.

#### 1. 1. 2018
Work on refactoring BFS has begun. We implemented Map and Tile structure for better data representation.
Refactoring continues on many places. We are writing tests as if our lives depend on it.
We are finishing the project.
