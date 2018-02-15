as yet unclassified
handleBigDotConsumed
	activeBigDots := activeBigDots + 1.
	ghosts
		do: [ :g | 
			g finder: PcmHuntRouteFinder new.
			g isBeingHunting: true.
			g velocity: 0.6 ].
	isHunting := true.
	ticker fire: [ self toggleHunting ] after: 4000