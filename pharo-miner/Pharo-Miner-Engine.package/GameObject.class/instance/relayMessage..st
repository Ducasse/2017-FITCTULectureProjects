pulse
relayMessage: aMessage
	self allBehavioursDo: [ :aBehaviour | aBehaviour sendMessage: aMessage ]