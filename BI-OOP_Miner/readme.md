Clone of popular game MegaMiner for Pharo >= 6.1. Semestral project for BI-OOP that uses [Pharo](https://github.com/pharo-project) & [Bloc](https://github.com/pharo-graphics/Bloc) & [NeoJSON](https://github.com/svenvc/NeoJSON).

Team members: [Lukáš Rod](mailto:rodlukas@fit.cvut.cz), [Jindřich Kuzma](mailto:kuzmajin@fit.cvut.cz), [Jan Tománek](mailto:tomanj26@fit.cvut.cz), [David Lebl](mailto:lebldavi@fit.cvut.cz)

# Gameplay video
**[https://youtu.be/mTAOPHVjENg](https://youtu.be/mTAOPHVjENg)** - simple 5min presentation of this game + example of debugging with GTinspectors

# Installation
The following script installs the latest version of MegaMiner with all required dependencies (Bloc for Pharo 6.1, NeoJSON):
```smalltalk
Metacello new
   baseline: 'MegaMiner';
   repository: 'https://gitlab.fit.cvut.cz/rodlukas/BI-OOP_Miner.git';
   load: #core
```
**Open game menu in playground with:**
```smalltalk
MiMegaMiner openMenu
```
**Magic shortcut for instant playing (without menu)**
```smalltalk
MiMegaMiner openGame
```

# Controlling
Game has simple cool controlling abilities:
* **Miner moving**: WASD/arrow keys
* **Interacting with buildings & teleport** *(selling, upgrading, saving, teleporting...)*: space/E
* **Create teleport using button**: "T" button in bottom right corner

# Design patterns & features
* **GTInspector extension:** *MiGameElement>>gtInspectorMinerIn:*
* **Null Object Pattern:** *MiCannotMoveResponse*
* **Observer:** *MiMinerMovedAnnouncement* - observed by *MiGameElement>>model:*
* **Visitor:** *MiTextureVisitor*
* **Polymorphism:** *MiBlock + inherited classes*

*for design we used EA UML model, its version doesn't correspondate with our final implementation at all, but if you're intersted in basic construction of this game, [follow this link](https://gitlab.fit.cvut.cz/rodlukas/BI-OOP_Miner/tree/master/models)*

# Our whiteboard
[Internal notes! CZ](https://docs.google.com/document/d/1AeyDciXJv8dZk3OdczXiSPJ0s9Y68kzQAbTthqZAhg8/edit)

---
# Reports log
* **8. week (26. - 3. 1. 18)**
    * tests completed
    * game testing successfull
    * no response from Stephane even after another new email.. still waiting, so.. visitor is in the state and nothing will be changed
* **7. week (19. - 25. 12. 17)**
    * **Tasks**
      * bug with teleporting
      * complete miner facing (rotations) to directions
      * write to Stephane & Jan about feedback on this project (& visitor)
      * tests improvement, repair tests related to keyhandling (due to logic changes)
      * play the game & test & repair bugs!
      * save & load stopped working + test if file exists & is consistent
    * fixed problem with teleport creating
    * some code moved from model to view side on the recommendation of Jan Bliznicenko
    * **PHARO problems:**
        * we solved problem with Timer - on some PCs the timer was working and miner (when the arrow keys stayed pressed) didn't move fast but on other PCs the timer didn't work and the miner was flying:D solved with help of Jan with variable lock:=true/false
        * new pharo image was able to run for ONE WEEK, next problems 7 image is AGAIN as each week totally unusable, can't even close a window or do anything.. so.. new image again.. - reported. ![2017-12-19__1_](/uploads/b81266e81ea2441feb646f88b3035260/2017-12-19__1_.png)
    * miner facing problem solved, miner now faces to the direction he's heading!!!
    * nonfunctional test repaired
    * documentation to new classes added
fuxed bugs with healt & fuel refilling during upgrading
    * saving & loading fixed and works now, if file is corrupted or missing, no exception showed now:)
    * we wrote mail to stephane and asked him about feedback (visitor review) on 20.12.17 but we still waiting on response from him
* **6. week (12. - 18. 12. 17)**
    * **Tasks**  
        * All tests implementation
        * solve TODOs in code comments (generating underground)
        * fix portal bugs, upgrading fix (after upgrade full to max)
        * health & plate consistency improvement
        * bitcoin depth fix
        * game loading from menu implement
    * more OOP style, constants are even much more used
    * minor view improvements for nicer UI
    * some bugs fixed (old code that was not updated to new accessors)
    * game looks now like game! Map is moving on the background smoothly!!!
    * we tried to transform miner to the direction he's moving but we've got crash of VM an all WIN machines (last week when we tried to use transform it worked) - we had to write next email to Aliaksei
    * nicer UI in upgrade shop
    * fixed bug that causes "tearing" in map during movements, problems with upgrading (health), health & plate structure finalized
    * all tests implemented
    * finalized commenting + refactoring
    * bitcoin depth fixed
    * game loading in menu works now
    * **ICEBERG & PHARO**
        * **WTF! After all the problems with git earthquake (previous week, see below), one member commited his changes of tests and reverted all our changes to ~ 3 days back!!!!!!!!!!!!!!!** - with help of Jan Bliznicenko we had to revert the commit, fileout his changes, filein his changes in other PC & commit. wtf
        * **Next problem - we had to remove sharedpool definitions in classes with tests because during fileout the warning ~ "classes with sharedpools can't be fileouted", nice feature, ahh.** - after fileout we had to write the sharedpools to classes again.
    * **consultation with Jan Bliznicenko** - consultation about new implementation of visitor, iceberg problems (one line above), required test coverage
        * conclusion - **write to Stephane** and ask him about possible improvements of code and visitor (and write answer to Jan because he is interested in this question)
    * **extensive mailing with Aliaksei Syrel**
        * we had problem with slow animations & when we removed *drawOnSpartaCanvas* the movements were faster but the block were not mineouted until the miner did next movement - Aliaksei helped us, we forgot to add an announcement to the BlockHolder when its block changes, therefore its graphical representation was not updated. We were instructed to use new fresh pharo, new version of bloc and the game was much smoother, even smoother than the smoothness when we removed previous week the *drawOnSpartaCanvas* method. He sent us video with new inspector on complete map but on our Win machines the pharo VM crashed after inspecting this, we sent him report and infos and he's able to reproduce this problems, so it'll be fixed:) Thanks for help!
        * mail about crashing after using transform & rotateBy on bitmap/form, Aliaksei was able to reproduce that problem on WIN and sent us new libMoz2D.dll library that we'd to copy to our pharo folder and the transforming is working now!
        * problems with white borders using rounded (we had problems during map moving - white borders around blocks, Alex helped us with solution - we should round positions computed during animation)
        * **missing functionality in Bloc for transforming miner:** he messaged us that we're using wrong operation to change miner's facing (Bl3DMatrix) which is not fully implemented yet (and we had exceptions due it) after we sent him what exactly we need to have in Bloc (reflection), he implemented it in Bloc (THANKS!)
* **5. week (5. - 11. 12. 17)**
    * **Tasks**
        * solve TODOs in internalnotes from Stephane & Aliaksei
        * visitor pattern & singleton implementation
        * full implementation of fuel, temperature damage, stats printing
        * write tests
        * quit button remove
        * new blocks implementation - bitcoin (for fun), refactoring
        * implement save & load game
    * visitor pattern successfully implemented after consultation with Jan Blizničenko (with singleton)
    * **consultation with Jan** - nullobjectpattern approved (with responses), gtinspection extension approved (miner controlling)
    * quit button removed (pharo close button is better)
    * upgrade center implemented, all parts of miner can be upgraded!
    * we found out that pharo number converted asString are showed like fractions - solved with asFloat
    * portal & teleporting is ready, added easter egg (bitcoin), damage (healt & fuel) implemented -> miner is teleported to start, movement of miner was fixed (y axis was buggy), fuel is not consumpted on surface or on buildings
    * TODOs in internalnotes from Stephane & Aliaksei were solved
    * movement of miner is limited 1 step / 0.6 sec (to prevent fast moving)
    * **saving & loading** game with neoJSON working + baseline update
    * **HUGE & COMPLETE refactoring**, each class&method was verified&edited&simplified + prefix Mi has each class now + simplified code (+ more OOP style - new classes, separations, miner had before that plenty of vars...), improved system of miner components upgrades with template class, each class (where it has some reason) is commented
    * smoother controlling, teleport bugfixes
    * **ICEBERG + PHARO:**
        * all problems persist, readme.md is each day by some member reverted to older state without any prompt, so irritating!
        * rodlukas: in my pharo (v6.1 60520) even settings cant be opened due to exception on left side (reported) + 7.12.17 i got next exceptions after start of pharo (the nice cascade pyramide on the right side of the image)
        * after these problems and unreliability of this pharo image I decided to use new clean pharo from web (60521-60523) but iceberg repo cloning was not working (even Jan Bliznicenko had issues with that.. and many others on discord), so i was not able to use 60520 and 60523.. either.
        * 7.12.17 - new version of pharo, clonning repo works but the clean image started with exception.. does someone tests the released versions at all?! Next problem - this exception is now in the old pharo with old image too..
        * 7.12.17 late night - after a few reboots of my laptop all the pharo started to work.. no idea wtf was that, the only thing I know is that from some reason all the pharo versions and images were not able to get freetypefonts.. closing and opening pharo again, as well as fresh pharo with new image - no change, font were ruined up still.. after restart everything is OK, but next boot? -> next problem -> next restart -> ok -> ..... there was nothing found on discord, a few days after i found that this bug can't be fixed fast so.. pharo is unusable from now for me!!!!!!! I really can't just restart my device due to other work.
        <img src="/uploads/5eca0c288c881eaee22d1b09ba44e000/icebergNightmare2.jpg" width="700"/>
        * 10.12.17 - **ICEBERG IS REALLY REALLY REALLY REALLY REALLY BROKEN & I REALLY DON'T UNDERSTAND WHY ARE WE FORCED TO DO SOME PROJECT WITH THIS PIECE OF SOFTWARE THAT CAN NOT REALLY PROCEED SIMPLE COMMIT OF MY WORK!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**
            - after refactoring & some changes & after two following another commits by other teams of members the git was like after earthquake, baseline was reverted to state from month ago, renamed classes were there but the classes were doubled with the classes with the old names, method that were removed were reverted.. wtf, omg, wtf. Image of bitcoin texture from previous week was deleted, readme reverted to state like two weeks ago. Nothing makes sense............! Than we found out that other files were deleted too, one week ago, two weeks ago.. each week due to some commit we lost work of some other member, nice version control system, well done!
            - this commit should revert everything to normal state (but who knows what is normal after this)
 * **mail (about problems with rendering of some game changes like mineouting the block and slow animations) to Aliaksei Syrel** - *waiting for response* - response recieved - see above in the next week.
 * **consultation with Stephane Ducasse** about Bloc slowness, global constants (how to solve this in pharo, we previously used only ordinary class with class methods), about NONFUNCTIONAL ICEBERG.
     * conclusion - we're waiting for Aliaksei response on our email, global vars can be implemented using Sharedpools (so we try to find out how to do that - no documentation, we used some usage using spotter but noone told us that the code is not inherited into  subclasses, so debugging was hell.. and then we found out that from some reason the constants are nil if we want to access them from abstract class, omg), iceberg is.. iceberg and its state is very.. confusing for all members of Pharo community, it'll be completely overwritten, so it's positive informations, we aggreed with Stephane that iceberg is quietly unusable now, we informed him about our lost work (see above), he informed us about his lost work :smile:
 * improved visitor pattern thanks to new experiences on lectures (sending self + no hardtyped class name in the visitor methods)
 * improved code for redrawing map when miner moves - oop style, constants, method decomposition
 * half of test is implemented so far (& green)
* **4. week (28. - 4. 12. 17)**
    * **Tasks**
        * render miner, rework layouts to allow miners movement (using relocate: message and not layout) + try to animate the movement
        * textures from github url linking
        * begin with miner movements (translate: message)
        * implementation of key strokes handling
        * better generating of map (relating to depth), solve bugs with blocks, improve and finish game logic
        * connection of key strokes with game logic
    * implementation of textures for each building, material, block.. & solved some serious bugs
    * meeting with Jan Blizničenko
        * solved how to distribute images with textures between team members (second repo and url downloading)
        * BLOC - solved with hacky way (dispatch message for events) how to remove eventlistener for keys (we added some for testing purposes but they still remained after key down, smalltalk garbagecollect and blUniverse reset did not help..)
        * BLOC - question about duration of rendering of images - it can't be solved (images are small but rendering of 500 of them takes some time)
        * solved problem with class instance vars (we set something default but after set each subclass value to something else, the value was cached, shutdown or garbagecollect or universe reset did not help, the only ability to do that was to remove the var from class description and add it again :3) - solved with variable clearing with assistance of Jan
        * BLOC - question about transforming - how to move with miner, solved with some reverse engineering of Bloc - *translate:* will be used
        * Jan sent us also example bloc app with animations that helped us with understanding of animations and help us found that we had problem with redrawing (see below)
    * textures are downloaded from public repository from URL (made second public repo for these resources)
    * refactoring (camelcase...) + deprecated method&classes removed
    * BLOC things:
        * We experienced issue when showing text, sometimes text is small, sometimes big (with same size setting), the best thing was when, in one sentence, half of letters were big and half was small (by small we mean 3 times smaller than bigger letters)
        * 3hours of wasted time - trying to show miner within certain position - poor documentation of bloc , also issues with redrawing persist , it is sad
        * **we decided to solve all the BLOC problem with Stephane**, we sent him email with description of our problem with not redrawing (it's been found out that animation of miner machine movement are performed but the canvas is not updated during and after that..)
            * Stephane sent us list of possible improvements & problems, some has been already solved, rest of them will be solved in the next week (but they didn't relate to our redrawing problem)
            * Aliaksei contacted us thanks to Stephane and helped us to solve redrawing problems, some additional refactoring, coding style, pharo style features added and recommended, thanks to his help our miner machine is smoothly moving, nice & thanks!
            * Aliaksei asked as to send him our problems with Bloc + what documentation is missed in our opinion of newcomers.. we prepared complete report for him from team members that work with Bloc (rodlukas, kuzmajin) and sent him that.
            * Aliaksei told us we should not use singleton for game (mre instances should be allowed), so it's removed now
            * Stephane told us that the way of downloading textures from repo (the way how Jan recommended us) is not effective and could be improved, that we should ask the Pharo community -> we asked on Discord and Peter Uhnak helped us with *IceRepository registry* and accessor *location*, the loading of game is now much more faster, second repo with resources (that was public) was removed
    * ICEBERG things:
        * We're trying to figure out why this readme file is sometimes overwrite with its old version after commit from iceberg, unfortunately it's not deterministic, time to time this file is reverted to old version because iceberg is not able to sync the readme from git if there are not pharo code changes, IT'S VERY ANNOYING!!!
        * + new experience with that - when i update readme and then fetch iceberg, the readme is not downloaded but there is 1 incoming update.. i make some code changes in pharo, commit, they cant be commited until i pull, then some merge is created, commit is successfull, next source code change, commit, commit successfull but the readme is overwritten with old version from PC without any notification
    * PHARO things:
        * in my image settings cant be opened, report sent, new image cant install baseline for our repo.. omg
    * methods for loading textures unified with parentclass TextureLoader, after problems on macOS the methods were miproved to be platform independent (due to delimiters in path)
    * miner is successfully moving using the keybord keys or WASD keys + is able to mineout some block (even that fact is rendered thanks to good oop design:3)
    * first implementation of gas station , trade center and repair center. Miner can now collect blocks and sell then. Still needs heavy balancing in fuel consumption.
    * Implementation of stats bar - user can now see temperature , miners health , cargo and fuel. In top left corner money are displayed.
    * View structure improved + new tag model.
* **3. week (21. - 27. 11. 17)**
    * **Tasks**
        * new game & quit implementation, singleton fix
        * keyboard key handling - find how, prepare implementation
        * implementation of classes (game logic, responses...)
    * BLOC:
        * we didn't know what does "dirtyareas" mean, because we got exception while rendering of space (after reload of window), solved - some magic "beDirtyArea" set to true.
        * trying to understand layout principes (we suspect layouts not to work properly (align) - kuzmajin), but somehow we managed to make it work by trial & error (centering menu buttons)
        * spent hours of inspecting how to properly render window again for game
        * successfully create first texture image for stoneblock (+ image rendering, thanks to discord chat examples of img rendering in bloc), but all that was real pain because of lack of documentation.
        * playing with key down event handlers BUT - problems with deletion of eventhandlers - see above
    * new game & quit implementation (after the button new game is clicked some new window is opened + quit button works), singleton fix (for game)
    * Issues with class variables - spent one hour debugging to find out that i have to close pharo to make changes appear - i guess this is what happen when you spend time creating good design "Immersive experience"
    * ICEBERG:
    *   iceberg nightmare continues! one member nearly lost his work and mind because somebody else commited while he was working - JUST ICEBERG THINGS
        * iceberg nightmare vol. ∞ - everyday routine <3 - 
        * <img src="/uploads/ec6634658caf898e67b2fb4e152134b2/icebergNightmare.jpg" width="700"/>
        * *will this result in lost of 4 hours of hard work? Stay tunned as we will find out in next report!!!!!!!!!*
    
* **2. week (14. - 20. 11. 17)**
    * **Tasks**
		* transforming model to pharo
		* implementing menu
		* start with graphic drawing using Bloc
	* we were solving problems with baseline and iceberg with Jan Blizničenko, after an hour problems solved (omg, the most repeated thing is delete Pharo folder, extract new Pharo and exec new Pharo) - some magic settings of iceberg (HTTPS git & enable metacello integration) and clean pharo
	* meeting:
	* improvements of model, final model ready to implement - other problems will be solved continously during development
	* design patterns prepared and found - visitor pattern, singleton, polymorphism
	* iceberg nightmare: all members of team cloned our repository to pharo, we tested some updates and commits, all worked, than we tested merging but.. ehm.. that really didn't work.. once we got error "merging method not implemented" when we wanted to solve manually a conflict + more exceptions that were solved AGAIN by cleaning Pharo.. and then we wanted to create Tags in our packages and after commit, all members except of the author of Tags got errors while fetching and updating their clones of repos.. so AGAIN clean Pharo, no tags appeared in pharo althought they can be viewed in gitlab. Ahhh, solved - the tags are not visible in Pharo until they won't be empty. Ups. Solved - empty method in each tag and tags are now visible for other members after updating from repo. The iceberg seems not to be much (dumb)user friendly, we have experiences with SVN and.. the feelings about Pharo Iceberg are not much positive, we'll see how things go further.
	* discussion about implementing abstract classes - we found some docs http://pharo.gforge.inria.fr/PBE1/PBE1ch6.html and now we're ready for them!
	* iceberg nightmare vol. 2 - with commits we've experienced issues with reverting others changes to old versions (ie. i'm commiting but someone did some changes to this readme & i didn't downloaded the last version.. so it will just without any notification overwrite this new file with mine old version, omg)
	* FIRST DAY WITH BLOC PROGRAMMING (rodlukas) - After one day spent with Pharo & Bloc creating menu for our game.. I really think there should be some documentation, Bloc is not really ready for this subject this year (maybe later, but.. you know, we have this subject now), the pdf with bloc memorygame is cute but.. how can we do some Bloc game when half of Bloc is not implemented and the second half of Bloc is not commented or well described, it remembers me the times when I was younger and I was trying to develop something according to some dummy tutorials and I had not idea what am I doing.. !BUT! the menu is ready. Peace.
		* + I tried to use Brick package but.. seems not to be implemented yet, so we're creating buttons with Block shapes
	* experimenting with events and announcements - announcements didn't work (made according to tutorial in help for announcements), the problem was found - the Announcer instance must be the same for both of sides, althought there is in help created in each side new instance, so help is so small and still has problems... this understanding of announcements was aggred by Jan Blizničenko after discussion.
	
* **1. week (6. - 13. 11. 17)**
    * **Tasks**
        * Look through design patterns
        * Learn how to display single window with menu
        * Completion of class model
        * Go through pharo game https://ccmi.fit.cvut.cz/smalltalk/hadiazebriky/
    * introduction to topic, read requirements for semestral project
    * we mapped current offer of Miner games, played some of them to understand the topic of our semestral project
    * some notes about the Mega Miner were taken (like point of game, opportunities, what can we do and how it works) - in google docs
    * going through bloc tutorial PDF + demo of memorygame testing + code and model analysis
    * found similar projects - Wizard battle arena, https://github.com/peteruhnak/pharo-tanks-game - Both use SDL2
    * choosing between sdl2 × Bloc - found some informations and difference between them
    * beginning with conceptual modelling + meeting at school, extension of conceptual mode (in UML)
    * we asked Jan Blizničenko about Bloc (whether it's possible to do some animation in Bloc like movements of a person..) + whether is our simple model good or how to improve it + whether our singleton suggestion is good and how to code it in pharo
    * consultation with R. Pergl about our class model, clarification about some implementation/concept related questions, tip for going through pharo game https://ccmi.fit.cvut.cz/smalltalk/hadiazebriky/
    * new PDF and memorygame released, going through both and testing, new installation script for bloc released -> new Pharo installation, new memorygame, less exceptions and less problems, after some days no exception. HEUREKA!


# Textures resources
Miner - https://dereklaufman.deviantart.com/art/Drill-tank-453824959