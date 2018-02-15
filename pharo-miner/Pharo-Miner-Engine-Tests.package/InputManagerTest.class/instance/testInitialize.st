tests
testInitialize
	| im |
	im := InputManager new.
	Key KeyTable
		do: [ :c | self assert: (im getKeyState: c) equals: KeyState none ]