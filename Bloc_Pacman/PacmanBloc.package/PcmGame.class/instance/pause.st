async
pause
	state := PcmStatePaused of: self.
	ticker fire: [ self newGame ] after: 4000