as yet unclassified
unitDied
   | squareWhereDied |
	squareWhereDied := self square.
	self square: nil.
	self notifyDeath: squareWhereDied.