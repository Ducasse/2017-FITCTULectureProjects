tests
testGetKeyState
	| im |
	im := InputManager new.
	self assert: (im getKeyState: Key arrowDown ) equals: KeyState none