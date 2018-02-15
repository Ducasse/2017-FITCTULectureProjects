initialization
initialize 
	super initialize. 
	self background: (BlBackground paint: (Color gray lighter)). 
	self size: 800@800.
	managerModel := GameManagerModel new.
	managerModel announcer when: GMTeam2ChCShowAnnouncement  send: #team2Show to: self.
	managerModel announcer when: GMLevelShowAnnouncement   send: #levelShow to: self.
	self start.
	