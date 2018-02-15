tests
testPulse
	| im |
	im := InputManager new.
	im setKey: Key arrowDown state: KeyState down.
	im pulse.
	self assert: (im getKeyState: Key arrowDown) equals: KeyState pressed.
	
	im setKey: Key arrowDown state: KeyState up.
	im pulse.
	self assert: (im getKeyState: Key arrowDown) equals: KeyState none.