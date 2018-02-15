tests
testInitialize
	|champion|
	champion := Champion new.
	self assert: ( champion actualHP = 0 ).
	self assert: ( champion class = 'Unknown class' ). 
	self assert: ( champion imgPath = 'Unknown path' ). 
	self assert: ( champion name = 'Unnamed Guy' ). 
	self assert: ( champion level = 0 ). 
	self assert: ( champion team = 0 ). 
	self assert: ( champion played = false ). 
	
	
	
	 