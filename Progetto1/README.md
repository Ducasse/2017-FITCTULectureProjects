Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, "I represent a paragraph of text".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages


message one

message two 
(for bonus points) how to create instances.


One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

Instance Variables
a:      <Object>


Implementation Points
10/11/2017: 6th Lab Session

The project is : RPG : Fire Emblem/Disgaea using Bloc

We first read the information on Google docs. 
We decided to split the work into graphical and non-graphical tasks.
First, we will cover the non-graphical tasks and then we will incorporate this into the graphical tasks.
We have to all read the book (The bloc memory gamme), we will also try the game to understand how it works. 

For next time : meeting the 15/11 
We will start implementing the classes and the methods 
Everybody should have read the book 

15/11: 1st meeting (no class on 17/11)

Everybody read the book. But not really useful for now. 
We tried to to a diagram with all the classes that we need.
We chose the characters that we wanted, their weapons, weaknesses, forces etc.

For next time: finish the diagram and implement the classes and their attributes

24/11: 8th Lab Session 

We started implementing. 
First we'll have to build the grid.
Then we'll put all characters on it. 
We will do agile promagramming (implementation + visualisation).

01/12: 9th Lab Session 

We did the assignment about the DiceManager so we didn't really have time to work on the project.

08/12: 10th Lab Session

We talked with Peter, and he showed us how to make a grid with the bloc elements, which basically is explained in the book.
So we arranged this to fit in our code. 
So that we can actually see the result and work on the visual aspect. 
We are now implementing the Character class. We decided to store their position in an Array.
We shall discuss now about how we will store the available tiles, and do the rest of the implementation regarding the different characters.

15/12: 11th Lab Session

We implemented the final grid we wanted.
We implemented all the characters we needed, inheriting from the Character class.
We wanted the game to be playable with 2 players and no AI. Implementing an AI would be nice if we do have time to do it.
There will be established positions for the characters at the very beginning (just like in a Chess game) and 2 colors to differentiate the 2 players. 
We tried to store the position of a character in a Dictionary, but it wasn't a good idea as we couldn't access the attributes of a character so we changed that and stored the characters in 2 Ordered Collections.
We will have to have the vizualisation of every character in the grid. 
We met some troubles with Iceberg and Gitlab, some of us couldn't commit their work. So we decided to import/export/merge with the .mcz that we could find in our "package-cache". 
That is a bit not convenient but at least we could be aware of everyone's work and merge all the changes with ours.

22/12: 12th Lab Session 

This session was the last one before commiting our work. We discussed with Peter and he said that we still had a lot to do and that we spend too much time on analysis.

23/12-05/01: Christmas holidays

We tried to do as much work as we could on these holidays. 
We implemented the "fight" method which would allow a player to move all his characters (respecting the movement point of each character).
Once a character moved, it couldn't move again during the same turn. 
A player had to press a button to end his turn. But the button is not in the same window as the grid (it would be better if it was in the same window).
The general idea of the whole game was implemented. 
But the visualization isn't optimized. We still need to be able to visualize every character.
We weren't able to do so, so we asked Peter who showed us.
A character could then: move, fight and die.
Every member of the team also encountered an error which was "Subscript out of bound" and that we manage to resolve after a long time. 

We also needed to meet at least the code requirements and not do any code violations and most importantly test our code. 

05/01:

Youtube video is accessible with the link: https://youtu.be/hnurHQVl0xg
