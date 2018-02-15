control
moveDown
	self flying
		ifFalse: [ touchingtiles at: Vector2D down ifPresent: [ :tile | ^ tile mineBy: self ] ].
	"self makeMove: Vector2D down"