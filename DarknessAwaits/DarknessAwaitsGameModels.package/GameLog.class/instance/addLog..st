adding
addLog: message
	log addLast: message.
	announcer announce: LogAnnouncement new.