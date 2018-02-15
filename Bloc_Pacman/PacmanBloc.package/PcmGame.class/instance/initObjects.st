initialization
initObjects
|inky blinky clyde pinky |
	pacman := PcmPacman new.
	inky := PcmInky new.
	blinky := PcmBlinky new.
	clyde := PcmClyde new.
	pinky := PcmPinky new.
	space root addChild: pacman view.
	space root addChild: inky view.
	space root addChild: clyde view.
	space root addChild: pinky view.
	space root addChild: blinky view.
	ghosts add: blinky.
	ghosts add: inky.
	ghosts add: clyde.
	ghosts add: pinky.