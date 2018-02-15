# AI for RPG combats

The most elegant BI-OOP final project written with love in Pharo.

##### Team members
- Mikuláš Hrdlička
- Vojtěch Harašta
- Ondřej John
- Jan Holan


##### 7.11 Weekly Report
This week was spend on two fronts - most of the Team was researching the ways general AI is written, and the rest was working on a super-basic Game Design for an RPG system we would be building our AI on.

Next week, we will start implementation of the basic RPG system, while rest of the team will be working on an AI design and theoretical game balance.

##### 14.11 Weekly Report
This week was spent mostly implementing the basic combat system. Most of the system is already done, but it still needs some more refactoring, and some more features.

Rest of the team has finished the Game system design, so now we know what to implement. We also have some ideas about how to build the AI.

Next week, we will finish the RPG Battle system, and start with actuall AI Design.

##### 21.11 Weekly Report
We finished the main AI design decisions - we will create an AI with traits and personality, that works by first deciding what enemy is what archetype, judging by his performance, and then battle according to the traits they have.

More on this is written in the design doc somwhere here.

The work got split into 4 cathegories - Making the Backend Battle Game, Making the Traits for AI, Making Engine for Guessing what enemy is What Archetype, and making the GUI for Human Player to intereact with the game.

The backend engine is almost ready, the rest is still long way from being finished.

##### 28.11 Weekly Report
This week we are finally done with the backend engine. Almost. Only like two spells missing now.

We spent most of the week dealing with Pharo commits and pushes not working, trying to somehow reapply changes from crashed VM, and generally troubleshooting Pharo instead of writing our own code.

Backend battle game is mostly finished, only minor changes and two spells left to implement. This week, I implemented most of the spells.
Traits for AIs - Honza implemented first Defender and Random Trait, and some backend for assigning Traits to units. He also created a specification with Traits we will implement.

Guessing Engine has been assigned to Vojta, and he is working on it.

We are also doing research how to implement simple user interface. Interaction with game will be performed through window containing events output and buttons associated with all possible actions
that player can do each turn (like attacking, casting spells etc.).

#### 5.12 Weekly Report
User interface is almost finished after this week. Player can read events in output window and attack enemies when it's players turn. Casting spells and "guarding" will be implemented soon. We've chosen to use Spec framework, 
because it's easy to use, looks "native" and it fits our needs. Working with Spec was mostly without problems, but unfortunately there is almost no documentation.

#### 12.12 Weekly Report
Every part is now finished, what is left is to connect the parts together.

#### 19.12 Weekly Report
We are in the process of connecting everything together. It's mostly done. We are also refactoring code, writing tests and finalizing documentation.