tests
testGameWindowSize
	SGame start.
	
	self assert: ((SGame instance window space extent) = ((SGame instance window mapMaxXSize * 48 + SGame instance window menuXSize)@(SGame instance window mapMaxYSize * 48 + SGame instance window textStripYSize))).
	
 	SGame instance close.