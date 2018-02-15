tests
testSetKeyState
	| im |
	im := InputManager new.
	im setKey: Key arrowDown state: KeyState down.
	self assert: (im getKeyState: Key arrowDown) equals: KeyState down