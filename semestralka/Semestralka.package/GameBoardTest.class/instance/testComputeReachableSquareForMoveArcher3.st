searching in game board tests
testComputeReachableSquareForMoveArcher3
	| gameBoard p1 p2 unit1 unit2 unit3 computeCoordinates rightCoordinates |.
"setting game elements"
"--------------------------------------------------"
p1 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
p2 := PlayerHuman new playerName: 'Marge' ; race: 'Human'.

unit1 := Unit new  playerOwner: p1 ; unitType: UnitTypeSoldier.
unit1 health: (unit1 unitType maxHp).
unit2 := Unit new  playerOwner: p2 ; unitType: UnitTypeArcher.
unit2 health: (unit2 unitType maxHp).
unit3 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher.
unit3 health: (unit2 unitType maxHp).
"--------------------------------------------------"
	
"test unit Soldier which can move 2 square on grass"
"--------------------------------------------------"
gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
gameBoard addUnit: unit2 atPosition: (1@1).
gameBoard addTerrain: Tree atPosition: (1@2).
gameBoard addTerrain: Tree atPosition: (2@2).
gameBoard addTerrain: Tree atPosition: (2@1).

computeCoordinates := OrderedCollection new.
rightCoordinates := OrderedCollection new.
rightCoordinates
add: (1@1); add: (1@2); add: (1@3); add: (1@4);
add: (2@1); add: (2@2); add: (2@3);
add: (3@1); add: (3@2);
add: (4@1).

(gameBoard computeReachableSquareForMove: unit2)
 do: [ :each | computeCoordinates add: each getPosition.  ].

self assert: computeCoordinates size equals: rightCoordinates size.
self assert: (computeCoordinates allSatisfy: [ :eachPoint | rightCoordinates includes: eachPoint ]).
"--------------------------------------------------"