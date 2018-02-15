initialization
model: aGame
	super model: aGame.
	model miner announcer when: MiMinerMovedAnnouncement send: #redraw to: self.
	model announcer when: MiMinerUpgradeAnnouncement send: #showUpgrade to: self