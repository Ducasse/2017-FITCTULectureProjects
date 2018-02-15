tests
testInput
	| g |
	g := Game new.
	self assert: (g input isKindOf: InputManager)