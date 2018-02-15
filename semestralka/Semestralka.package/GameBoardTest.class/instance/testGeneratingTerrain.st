tests-accesing
testGeneratingTerrain
	|b|
	b := GameBoard createWithWidth: 5 andHeight: 3 ObsticalChance: 100.
	self assert: ((b getSquare:(1@1)) getTerrain) equals: Grass new.
	self assert: ((b getSquare:(1@2)) getTerrain) equals: Grass new.
	self assert: ((b getSquare:(1@3)) getTerrain) equals: Grass new.
	self assert: ((b getSquare:(3@1)) getTerrain) equals: Grass new.
	self assert: ((b getSquare:(2@1)) getTerrain) equals: Grass new.
	self assert: ((b getSquare:(3@1)) getTerrain) equals: Grass new.
	
3 to: 2 by: -1 do: [ :i |
5 to: 2 by: -1 do: [ :k |
	self assert: ((b getSquare: (k@i)) getTerrain) ~= Grass new.
	]
].