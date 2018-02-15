as yet unclassified
doGameTick
	pacman move: self.
	ghosts
		do: [ :ghost | 
			ghost move: self.
			(ghost collidesWith: pacman)
				ifTrue: [ self handleGhostCollision: ghost  ] ].
	ticker fire: [ self doTick ] after: 10