tests
testInitialize
	| g |
	g := Game new.
	self assert: (g gameloop isKindOf: GamePulseLoop).
	self assert: (g scenes isKindOf: Collection)