accessing
addPlayer: aPlayer
	players add: aPlayer.
	(players like: aPlayer)
		announcer when: EndPlayerMoveAnnouncement send: #nextRound to: self.