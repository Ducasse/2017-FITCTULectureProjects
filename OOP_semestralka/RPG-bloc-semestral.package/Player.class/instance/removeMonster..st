getSet
removeMonster: M
|mapField|
	"removes monter from player."
	"monsterQueue do: [ I | 
		(M == I)
		ifTrue: 
		[ 
		monsterQueue remove: I.
		^1
		 ].
		 ]."
	monsterQueue remove: M.
	mapField := (gameBoard mapField: (M positionWithinArray)).
	mapField clearMonsta.