Sokoban using Bloc
==================

Assignment: The goal of this project is to develop a sokoban game. The application should be able to load levels, collect points... Nicely decoupling the UI from the game model should be considered.

Installation
------------

- Bloc - install Bloc by running the following code:

    ```
    Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc:pharo6.1/src';
    load: #core
    ```

- Run the game using `Sokoban play`
- The controls are WASD + E (undo) and R (redo)


Reports
-------

- **2017-11-13**
    - getting familliar with Bloc
    - first shot at game state representation
    - loading XSB level files (WIP)
- 2017-11-14
    - about half the time is spent dealing with pharo bugs (e.g. [https://imgur.com/7jiKIhd.png](https://imgur.com/7jiKIhd.png))
        - yes, they keep opening when i close them
        - no, i am not gonna bother reporting it, i am a user, not a TestCase
- **2017-11-20**
    - completely reworked game state representation
    - made resource manager for loading images, level files etc.
    - found 2d assets for our game on opengameart.org
    - experimented with Bloc and planning to start GUI implementation
    - plan: finish+document game logic, continue working on graphics
- 2017-11-25
    - bug of the week: [https://i.imgur.com/BeHao4w.gif](https://i.imgur.com/BeHao4w.gif)
- **2017-11-27**
    - fixes in loading and game logic, more tests
    - printing to XSB format
    - made classes for graphical representation of game elements
    - started implementing GUI using Spec Framework
    - plan: fix last bugs in loading code, validate levels for consistency, undo/redo for moves
- **2017-12-04**
    - loading levels in GUI
    - player's movement with keyboard
    - scaling levels according to the window's size
    - undo for player's moves is almost finished(boxes still remain at their positions)
    - confirmation dialogs when performing critical actions in GUI
    - other minor GUI improvements
    - plan: finish undo for moves, possibly finish GUI
- **2017-12-11**
    - comments
    - undo
    - plan: redo, saving/loading all moves of best solution
- 2017-12-12
    - i wonder if iceberg devs use iceberg, because if they did, they'd notice it deletes changes to new files like README and .gitlab-ci.yml made on git{lab,hub}
- **2017-12-18**
    - GUI fixes
    - comments, categorized some messages, minor changes in ResourceManager
    - added redo button to GUI, implementing redo
    - implementing moves history
    - refactoring, fixed some issues reported by critic browser
    - plan: finish implementation, fix all remaining problems, documentation
- 2017-12-27
    - So, it turns out pharo doesn't have namespaces *and* it lets you override existing methods from other packages without warning while you're thinking you're just adding new ones. This works brilliantly when unloading your package because it doesn't restore the original code and things start throwing errors, making the "IDE" unusable. And before some genius tells me i should check that the method doesn't exist, what if i implement mine and *later* the original package adds one with the same name?
- 2017-12-29
    - Here's a story: Once upon a time I open the game and the level doesn't draw so I assume the bug is in my code (silly modest me). I start undoing changes I made since the last commit (there's no git stash in the smalltalk universe). Well, I run out of things to undo.... Hmm, let's try checking out a previous commit. I am not asking for git bisect, I just wanna see a previous commit. Too much to ask from iceberg. Maybe the command line interface will help (like with any other language)? Nope - how do I tell pharo the files changed - nobody cares about files in the smalltalk universe. Oh, actually, I can create a branch using the CLI that points to a previous commit and switch branches in iceberg. I forgot to save the image but no crash this time, phew. Ok, level still doesn't draw. Hmm, maybe the problem isn't in my code. Let's turn it off and on again. Oh wait, it's persistent. Ok, let's update pharo. No good. Let's update bloc. Nope. At this point I am contemplating starting with a clean image but I remember the hassle of setting up git and SSH keys and importing everything while navigating the iceberg bugfield (like minefield but in the smalltalk universe). Oh, wait, if it's not my code that's wrong, it must be bloc. I've heard legends about a magical button that solves everything: ~~rm -rf pharo1.6~~ Reset Bloc Universe. The level draws. And they lived happily ever after.

Architecture
------------

Levels and solutions are stored using a subset of the most widely used [format](http://www.sokobano.de/wiki/index.php?title=Level_format) sometimes called XSB or SOK.
During runtime a level is represented as a 2D grid of GameCells each if which knows its location so it can access its neighbors. PathCells also know their content.

When moving, the Player tells the neighbor GameCell it wants to step onto it, if the the GameCell is a PathCell, it tells its contents.
If the contents are Empty, a Step object is returned representing that move,
if the contents are Box, it tells the next neighboring cell it wants to be pushed onto it, which in turn tells its contents.
If it's a valid move, a Push object is returned.
If any part of this chain doesn't allow the desired action (stepping onto a wall, pushing a box into a wall or another box), a NoMove object is returned.

A Step or Push then "apply" themselves by changing the player's position and optionally the box's position and adding themselves to the level's History.
A NoMove does nothing. Any Move in history can be undone and redone. Every move, undo or redo creates a PlayerMovedAnnouncement to notify the GUI.

The level counts how many empty GoalCells are left (the number of goals and boxes is the same, checked during loading).
When a Box is pushed onto a GoalCell, it decrements the counter, when it's pushed away, it increments the counter.
When the counter reaches 0, the level creates a VictoryAnnouncement, which is handled by the GUI.

Bloc framework is used for displaying the level and everything it contains. Classes inside Elements package are graphical representations of various game elements. 
The LevelElement represents the whole level and contains different types of game cell elements (with optional content) inside a grid layout. 
Sending PlayerMovedAnnouncement to this element results in its rerendering. Image assets used by graphical elements are managed by ResourceManager.

Main window, menus and other parts of UI are implemented using Spec framework.

---

Examples of [design patterns/elements](https://edux.fit.cvut.cz/courses/BI-OOP/semestralka/start#pozadavky_na_kod):
- Polymorphism - [Direction](Sokoban.package/Direction.class) and subclasses
    - Although Critic Browser seems to disagree, this is Smalltalk's idiomatic way of imitating switch statements.
- Singleton - [ResourceManager](Sokoban.package/ResourceManager.class)
    - Given Pharo's persistent nature, we needed to make sure changes to assets take effect when launching the game again while avoiding the cheap (and inefficient) solution of reloading them each time they're needed. The instance is also destroyed when closing the game to avoid wasting memory.
- Null Object - [NoMove](Sokoban.package/NoMove.class)
    - When the player attempts an invalid move, this object is returned and treated the same way a valid move would be but has no effect.
- Observer - [SokobanPlayScreen](Sokoban.package/SokobanPlayScreen.class)
    - We use announcements from Announcements-Core package for level related event handling, which is Pharo implementation of observer pattern (<http://pharo.gemtalksystems.com/book/LanguageAndLibraries/announcements/>).

Closing thoughts
----------------

I am not bashing pharo just because it's popular in this class (and it wouldn't be popular without a reason), I honestly find it the buggiest piece of software I've ever had to use.
The issues range from randomly ignored clicks, broken numpad enter (90% sure it's SDL's fault)
and bad double click detection (look, if I move to a different element in a list between clicks, I am not double clicking, I am browsing the list),
through iceberg undoing changes to files that are not part of the smalltalk environment like READMEs,
to 100% CPU usage (AMDs are nice in winter, just wish the fan was quieter) and segfaults on startup (glad I have backups, that image is dead).

I guess smalltalk had some nice ideas at the time but half the time the IDE can't do it's job because it's dynamicly typed (try renaming a function called `at:` for only your class).
I did like versioning per function (though I only needed it because iceberg is hopelessly inadequate) and I think strongly typed objects are better than unix's streams of bytes,
[when done right](http://m.likesuccess.com/quotes/13/631097.png).
I heard great things about smalltalk and was looking forward to it, people used strong words like hyper-productivity, I just can't see it now.

There are issues like separators instead of terminators (love the diffs) combined with a poor formatter that moves comments around (even into different blocks at times).
Indexing from 1 is [wrong](https://www.cs.utexas.edu/users/EWD/transcriptions/EWD08xx/EWD831.html).
I am not an expert on OOP but doesn't [this](https://i.imgur.com/crscXKl.png) violate LSP?

There's also a general lack of attention to detail like unicode "[support](https://imgur.com/CND18cK)"
and [wrong](https://i.imgur.com/KgjHX1B.png) colors in git diffs (for some reason they fixed the [off-by-one](https://imgur.com/hQPwySU) error but they see nothing wrong with additions in red and deletions in green).
Finally, [I](https://i.imgur.com/3bjKGsA.png) will [not](https://i.imgur.com/H2rlEJu.png) debate [static](https://i.imgur.com/BuUh3t2.png) vs [dynamic](https://i.imgur.com/9a59ETE.png)
typing [but](https://i.imgur.com/dC2LNM7.png) I [can](https://i.imgur.com/7WocZ7A.png) confidently [say](https://i.imgur.com/O2JvoHI.png) pharo's [crowdsourced](https://i.imgur.com/KKBQKJN.png)
typing [does](https://i.imgur.com/8h0ynWa.png) not [work](https://i.imgur.com/75GC0au.png). I am counting `nil` related errors because they can be prevented with a *good* type system.