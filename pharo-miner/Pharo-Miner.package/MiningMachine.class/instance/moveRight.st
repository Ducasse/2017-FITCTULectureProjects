control
moveRight
	self flying ifFalse: [ touchingtiles at: Vector2D right ifPresent: [ :tile | ^ tile mineBy: self ] ].
	self makeMove: Vector2D right