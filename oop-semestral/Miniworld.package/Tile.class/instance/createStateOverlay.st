state update
createStateOverlay
	| stateElem |
	stateElem := BlElement new wantsMouse: false.
	self addChild: stateElem.
	^ stateElem