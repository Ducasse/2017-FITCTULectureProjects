as yet unclassified
handleGhostCollision: ghost
	"react to a collision with ghost"

	"TODO: decrement lifes and do stuff"

	isHunting
		ifTrue: [ ghost resetOn: map.
			points := points + 50.
			self announcer
				announce:
					(PcmPointsChanged new
						points: points;
						yourself) ]
		ifFalse: [ ghosts do: [ :g | g resetOn: map ].
			lifes := lifes - 1.
			self announcer
				announce:
					(PcmLifesChanged new
						lifes: lifes;
						yourself).
			lifes = 0
				ifTrue: [ self handlePlayerLost ].
			pacman resetOn: map ]