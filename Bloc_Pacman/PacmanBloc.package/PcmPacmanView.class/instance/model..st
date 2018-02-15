accessing
model: aPcmPacman
	model := aPcmPacman.
	model announcer when: PcmBlockMoved send: #move to: self.
	model announcer when: PcmBlockChangedDirection  send: #changeDirection to: self