creation
x: xLen y: yLen mines: minesLen
	|var|
	var := self uniqueInstance .
	(var exists not)
		ifTrue: [ var setGameX: xLen y: yLen mines: minesLen  ].
		
	^ var