initialization
model: aPcmGame
	model := aPcmGame.
	model announcer when: PcmLifesChanged send: #update to: self