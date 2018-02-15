initialization
withRank: aRank
	| ability |
	ability := Ability new.
	ability rank: aRank.
	((aRank < 0) or: (aRank > 4))
		ifTrue:	[ ^'Error: Rank out of bounds' ].
	(aRank == 4)
		ifTrue:	[ ability value: ((10 to: 15)atRandom)  ].
	(aRank == 3)
		ifTrue:	[ ability value: ((8 to: 13)atRandom)  ].
	(aRank == 2)
		ifTrue:	[ ability value: ((7 to: 11)atRandom)  ].
	(aRank == 1)
		ifTrue:	[ ability value: ((6 to: 10)atRandom)  ].
	^ability 