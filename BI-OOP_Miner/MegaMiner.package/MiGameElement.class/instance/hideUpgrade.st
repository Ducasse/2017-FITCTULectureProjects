drawing
hideUpgrade
	self removeChild: upgradeView.
	upgradeView := nil.
	model announcer unsubscribe: self.
	model announcer when: MiMinerUpgradeAnnouncement send: #showUpgrade to: self