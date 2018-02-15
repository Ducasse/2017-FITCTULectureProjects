tests
testdealDamage
	|champion|
	champion := Champion new.
	champion actualHP: 13.
	champion dealDamage: 5.
	self assert: ( champion actualHP = 8 ).
	
	
	
	 