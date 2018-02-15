accessing
state: aState
	"self assert: (aState isKindOf: TileState class) description: 'State must be of type TileState'."

	aState = state
		ifTrue: [ ^ self ].
	state := aState.
	self updateStateOverlay