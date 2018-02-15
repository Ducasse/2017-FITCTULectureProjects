initialization
initialize
	super initialize.
	
	equipment := Equipment new.
	self generateAttributes.
	self calculateMaxHealth.
	