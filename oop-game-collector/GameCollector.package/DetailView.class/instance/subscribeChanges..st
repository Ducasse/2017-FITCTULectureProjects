initialization
subscribeChanges: aBlock
	announcer when: GameChangeAnnouncement do: [ aBlock value ]