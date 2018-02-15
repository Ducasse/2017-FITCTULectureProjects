tests
testGameWindowElementsVisibility
	SGame start.
	
	self assert: (SGame instance window menu isVisible).
	self assert: (SGame instance window gameview isVisible).
	self assert: (SGame instance window textstrip isVisible).
	
 	SGame instance close.