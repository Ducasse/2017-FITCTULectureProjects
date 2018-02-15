accessing
model: aPcmGame
	model := aPcmGame.
	model announcer when: PcmPointsChanged send: #update to: self.