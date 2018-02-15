instance creation
newGame
	
	points := 0.
	activeBigDots := 0.
	isHunting := false.
	dots := totalDots .
	lifes := 3.
	state := PcmStatePlaying of: self.
	map populateConsumables.
	
	self resetGhosts.
	pacman resetOn: map.
	
	self announcer announce: PcmNewGame.
	
	self announcer
		announce:
			(PcmPointsChanged new
				points: points;
				yourself).
	self announcer
		announce:
			(PcmLifesChanged new
				lifes: lifes;
				yourself).
	
	ticker fire: [ self doTick ] after: 20.
	