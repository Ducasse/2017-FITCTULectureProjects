tests
testIsDead
	|champion|
	champion := Champion new.
	champion actualHP: 0.
	self assert: ( champion isDead  = true). 
	champion actualHP: 10.
	self assert: (champion isDead = false).
	
	
	
	 