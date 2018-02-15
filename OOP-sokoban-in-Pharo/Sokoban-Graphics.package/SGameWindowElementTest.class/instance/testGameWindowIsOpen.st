tests
testGameWindowIsOpen
	SGame start.
	
	self assert: (SGame instance window isVisible).
	
 	SGame instance close.