accessing
gameLog: newLog
	gameLog := newLog.
	source log: gameLog log.
	gameLog announcer when: LogAnnouncement  send: #onLogChange to: self
	