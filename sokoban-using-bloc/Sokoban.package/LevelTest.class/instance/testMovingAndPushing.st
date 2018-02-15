tests
testMovingAndPushing
	| level |
	level := Level
		loadXsb:
			'
######
#    #
#.$@ #
######'.
	self assert: level player levelPos point equals: 2 @ 3.
	self assert: level goalCount equals: 1.
	"make circle, try to walk into wall"
	level move: Right new.
	level move: Up new.
	level move: Left new.
	level move: Down new.
	level move: Right new.
	level move: Right new.
	level move: Left new.
	self assert: level player levelPos point equals: 2 @ 3.
	self assert: level goalCount equals: 1.
	"try to push box from above against wall"
	level move: Up new.
	level move: Left new.
	level move: Down new.
	self assert: level player levelPos point equals: 1 @ 2.
	self assert: level goalCount equals: 1.
	"visit goal cell"
	level move: Left new.
	level move: Down new.
	self assert: level player levelPos point equals: 2 @ 1.
	self assert: level goalCount equals: 1.
	"into walls again"
	level move: Left new.
	level move: Down new.
	self assert: level player levelPos point equals: 2 @ 1.
	self assert: level goalCount equals: 1.
	"push box away"
	level move: Right new.
	self assert: level player levelPos point equals: 2 @ 2.
	self assert: level goalCount equals: 1.
	"walk to the other side"
	level move: Up new.
	level move: Right new.
	level move: Right new.
	level move: Down new.
	self assert: level player levelPos point equals: 2 @ 4.
	self assert: level goalCount equals: 1.
	"push box onto goal"
	level move: Left new.
	level move: Left new.
	self assert: level player levelPos point equals: 2 @ 2.
	self assert: level goalCount equals: 0