initialization
createUpgradeView: aGame
	upgradeView := MiUpgradeElement new.
	upgradeView model: aGame miner.
	upgradeIndex := self childrenCount + 1.
	self addChild: upgradeView at: upgradeIndex