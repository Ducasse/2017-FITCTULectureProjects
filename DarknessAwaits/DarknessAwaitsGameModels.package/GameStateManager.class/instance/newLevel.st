accessing
newLevel
	newLevel := true.
	gameState := NewGame new.
	self announcer announce: GameStateChangedAnnouncement new.