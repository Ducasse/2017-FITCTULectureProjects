tests
testKeyDown
	| im |
	im := InputManager new.
	self assert: (im keyDown: Key arrowDown) equals: false.
	im setKey: Key arrowLeft state: KeyState down.
	self assert: (im keyDown: Key arrowLeft) equals: true.
	im pulse.
	self assert: (im keyDown: Key arrowLeft) equals: false.