initialization
createStatsView: aGame
	statsView := MiStatsElement new.
	statsView model: aGame miner.
	self addChild: statsView