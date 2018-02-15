as yet unclassified
toggleHunting
	activeBigDots := activeBigDots - 1.
	activeBigDots = 0
		ifTrue: [ self ghosts
				do: [ :each | 
					each finder: PcmBasicRouteFinder new.
					each isBeingHunting: false.
					isHunting := false.
					each resetVelocity  ] ]