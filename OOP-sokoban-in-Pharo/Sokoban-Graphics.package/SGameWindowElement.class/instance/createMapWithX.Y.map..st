elements initialization
createMapWithX: x Y: y map: aMap
	| gameviewXCoord gameviewYCoord |
	gameview ifNotNil: [ gameview clear ].
	gameview := SMapElement new.
	((x > 20) | (y > 15)) ifTrue: [self error: 'Map size is currenty limited to 20*15. Provided map is too big!'].
	
	gameview createMapWithX: x Y: y map: aMap.

	gameviewXCoord := (self mapMaxXSize - gameview xMapSize) * 48 / 2.
	gameviewYCoord := (self mapMaxYSize - gameview yMapSize) * 48 / 2.
	gameview relocate: gameviewXCoord @ gameviewYCoord.
	
	space root addChild: gameview.