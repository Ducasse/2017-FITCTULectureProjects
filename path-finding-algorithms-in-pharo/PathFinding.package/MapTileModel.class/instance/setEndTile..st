initialization
setEndTile: aTile
	self blocked
		ifTrue: [ ^ self ].
	self class mapModel setEndTile: aTile.
	ending := true.
	aTile selected: true.