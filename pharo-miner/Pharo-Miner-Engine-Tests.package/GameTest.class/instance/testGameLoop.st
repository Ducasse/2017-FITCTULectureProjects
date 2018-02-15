tests
testGameLoop
	| g |
	g := Game new.
	self assert: (g gameloop isKindOf: GamePulseLoop)