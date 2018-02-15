initialization
model: aSource
	super model: aSource.
	model announcer when: MiMinerMoneyAnnouncement send: #redraw to: self.
	self redraw