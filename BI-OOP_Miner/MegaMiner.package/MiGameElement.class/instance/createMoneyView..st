initialization
createMoneyView: aGame
	moneyView := MiMoneyElement new.
	moneyView model: aGame miner.
	self addChild: moneyView
	
