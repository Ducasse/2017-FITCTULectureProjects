notifications
notifyDeath: aSquareWhereDied
	moveAnnouncer announce: (UnitDiedAnnouncement createWith: aSquareWhereDied).