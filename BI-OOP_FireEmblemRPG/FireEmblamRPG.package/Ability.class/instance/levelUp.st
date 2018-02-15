operations
levelUp
	((rank < 0) or: (rank > 4))
		ifTrue:	[ ^'Error: Rank out of bounds' ].
	(rank == 4)
		ifTrue:	[ self value: (value + (1 to: 3)atRandom)  ].
	(rank == 3)
		ifTrue:	[ self value: (value + (1 to: 2)atRandom)  ].
	(rank == 2)
		ifTrue:	[ self value: (value + (0 to: 2)atRandom)  ].
	(rank == 1)
		ifTrue:	[ self value: (value + (0 to: 1)atRandom)  ].