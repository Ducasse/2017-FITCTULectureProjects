initialization
model: aSource
	super model: aSource.
	"When you spend money it is because it somehow affected stats"
	model announcer when: MiMinerMoneyAnnouncement send: #redraw to: self.
	self redraw