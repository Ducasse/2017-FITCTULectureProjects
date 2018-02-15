accessing
gameMap: aMap "GameMap"
	|listener|
	self removeChildren.
	
	gameMap := aMap.
	
	listener := MyEventListener new gameMap: gameMap; gameElement: self.
	
	self layout columnCount: gameMap getWidth.
	
	aMap cards do: [ :aFieldModel |
		|aCardElem imageForm pathToImg|
		
		aCardElem := MyCardElement new card: aFieldModel;
		size: (size / gameMap getWidth) @ (size / gameMap getHeigth ).
		pathToImg := IceRepository registry first location / 'img' / aFieldModel field getImg.
		imageForm := ImageReadWriter formFromFileNamed: pathToImg fullName.
		"self assert: [ 1 = 3 ] description: [ pathToImg asString, imageForm asString ]."
		aCardElem background: (BlBackground image: imageForm).
		
		
		
		"add click listener only to accessible fields"
		aFieldModel field accessable
			ifTrue: [ aCardElem addEventHandler: listener ]
			ifFalse: [
				aFieldModel field type = Enum me
					ifTrue: [ aCardElem addEventHandler: listener ].
				aFieldModel field type = Enum teammate
					ifTrue: [ aCardElem addEventHandler: listener ].
				"not to enemy, couse I cant play as my enemy :D"
			].
		
			
		self addChild: aCardElem
	]