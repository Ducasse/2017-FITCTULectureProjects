actions
move: dir
	| action |
	action := player tryMove: dir.
	action doActionOn: self.
	action addToHistory: history.
	announcer announce: PlayerMovedAnnouncement new.
	self handleVictory