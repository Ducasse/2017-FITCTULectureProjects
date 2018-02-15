accessing
setMapSize: aSize
	self
		assert: [ aSize > 0 ]
		description: [ 'Size must be positive'  ].
	mapWidth := aSize.
	mapHeigth := aSize