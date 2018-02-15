tests
testKeyUp
	| im |
	im := InputManager new.
	self assert: (im keyUp: Key arrowDown) equals: false.
	im setKey: Key arrowLeft state: KeyState up.
	self assert: (im keyUp: Key arrowLeft) equals: true