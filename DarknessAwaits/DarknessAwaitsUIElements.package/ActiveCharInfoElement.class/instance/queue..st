accessing
queue: newQueue
	queue := newQueue.
	queue announcer when: DrawCharacterOnTurnAnnouncement send: #onShowCharacterOnTurnCharacterInfo to: self