pulse
relayMessage: aMessage with: anObject
	self allBehavioursDo: [ :aBehaviour | aBehaviour sendMessage: aMessage with: anObject ]