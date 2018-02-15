accessing
setMapSize: aWidth and: aHeigth
	self
		assert: [ aWidth > 0 ]
		description: [ 'Width must be positive'  ].
	self
		assert: [ aHeigth  > 0 ]
		description: [ 'Heigth must be positive'  ].

	mapWidth := aWidth.
	mapHeigth := aHeigth