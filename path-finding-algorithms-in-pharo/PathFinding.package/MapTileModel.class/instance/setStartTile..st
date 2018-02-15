initialization
setStartTile: aTile
	self blocked
		ifTrue: [ ^ self ].
	self class mapModel setStartTile: aTile.
	starting := true.
	aTile selected: true.