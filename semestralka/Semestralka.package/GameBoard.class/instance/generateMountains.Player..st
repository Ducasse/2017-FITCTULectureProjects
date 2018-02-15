contentGeneration
"Generates mountains on the game board by generating a mountain on each Square with the probability of the value of parameter percentageOfMountains divided by 100."

generateMountains: percentageOfMountains Player: player
|locVar|
height to: 2 by: -1 do: [ :i |
width to: 2 by: -1 do: [ :k |
	100 atRandom <= percentageOfMountains
		ifTrue:
			[ (self getSquare: k@i) setTerrain: ImpassableTerrain setRandomImpassableTerrain. ]
	]
].
"generate moc units for testing"
locVar:=Unit createAtSquare: (self getSquare: (1@1)) withOwner: player type: (UnitTypeSoldier new).
(self getSquare: (1@1)) setObject: locVar. 
"(self getSquare: 1@1) setObject: UnitTypeHunter new.
(self getSquare: 1@2) setObject: UnitTypeHunter new.
(self getSquare: 3@2) setObject: UnitTypeHunter new."