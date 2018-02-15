contentGeneration
"Generates mountains on the game board by generating a mountain on each Square with the probability of the value of parameter percentageOfMountains divided by 100."

generateMountains: percentageOfMountains

height to: 2 by: -1 do: [ :i |
width to: 2 by: -1 do: [ :k |
	100 atRandom <= percentageOfMountains
		ifTrue:
			[ (self getSquare: k@i) setTerrain: ImpassableTerrain setRandomImpassableTerrain. ]
	]
].

"generate moc units for testing"
"(self getSquare: 1@1) setObject: UnitTypeHunter new.
(self getSquare: 1@2) setObject: UnitTypeHunter new.
(self getSquare: 3@2) setObject: UnitTypeHunter new."