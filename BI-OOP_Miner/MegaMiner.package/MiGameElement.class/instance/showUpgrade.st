drawing
showUpgrade
	model announcer unsubscribe: self.
	model announcer when: MiMinerUpgradeAnnouncement send: #hideUpgrade to: self.
	self createUpgradeView: model