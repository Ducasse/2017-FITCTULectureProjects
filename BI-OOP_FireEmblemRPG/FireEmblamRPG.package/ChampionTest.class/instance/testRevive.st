tests
testRevive
	|champion|
	champion := Rogue new.
	champion actualHP: 0.
	self assert: ( champion isDead  = true). 
	champion revive.
	self assert: (champion isDead = false).
	
	
	
	 