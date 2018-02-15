actions
redoMove
	history redo doActionOn: self.
	announcer announce: PlayerMovedAnnouncement new