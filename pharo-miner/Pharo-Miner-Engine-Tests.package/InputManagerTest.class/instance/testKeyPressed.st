tests
testKeyPressed
	| im |
	im := InputManager new.
	self assert: (im keyPressed: Key arrowLeft) equals: false.
	im setKey: Key arrowLeft state: KeyState down.
	self assert: (im keyPressed: Key arrowLeft) equals: true.

	10 timesRepeat: [ im pulse. self assert: (im keyPressed: Key arrowLeft) equals: true. ].
	im setKey: Key arrowLeft state: KeyState up.
	self assert: (im keyPressed: Key arrowLeft) equals: false.
	im pulse.
	self assert: (im keyPressed: Key arrowLeft) equals: false