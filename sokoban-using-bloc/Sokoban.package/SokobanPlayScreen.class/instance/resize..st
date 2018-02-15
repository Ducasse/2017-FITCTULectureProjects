updating
resize: aPoint
"Creates a new LevelSpace of new size and updates GUI to use this resized space."
	| space |
	currentSize := aPoint.
	space := LevelSpace forLevel: level withSize: aPoint.
	space borderless: true.
	space show.
	space hostSpace morphicWindow extent: aPoint.
	playGrid := space hostSpace morphicWindow asSpecAdapter.
	self needRebuild: false.
	self buildWithSpecLayout: self class defaultSpec