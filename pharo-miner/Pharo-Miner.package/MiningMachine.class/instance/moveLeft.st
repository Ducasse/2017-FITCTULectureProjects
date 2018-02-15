control
moveLeft
	self flying ifFalse: [ touchingtiles at: Vector2D left ifPresent: [ :tile | ^ tile mineBy: self ] ].
	self makeMove: Vector2D left