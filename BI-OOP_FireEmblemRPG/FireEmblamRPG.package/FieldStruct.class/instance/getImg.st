accessing
getImg
	|img|
	img := 'default.png'.
		type = Enum road
			ifTrue: [ img := 'road.png' ].
		type = Enum forest
			ifTrue: [ img := 'forest.png' ].
		type = Enum hole
			ifTrue: [ img := 'hole.png' ].
		type = Enum wall
			ifTrue: [ img := 'wall.png' ].
		champion isNotNil
			ifTrue: [ img := champion imgPath asString ].
			
	^ img.