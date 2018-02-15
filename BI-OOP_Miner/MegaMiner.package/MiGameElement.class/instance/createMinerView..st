initialization
createMinerView: aGame
	minerView := MiMinerElement new.
	minerView model: aGame miner.
	self addChild: minerView