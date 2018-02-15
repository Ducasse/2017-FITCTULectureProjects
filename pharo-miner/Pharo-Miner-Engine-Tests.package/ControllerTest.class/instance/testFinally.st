tests
testFinally
	| g c |
	g := GameTest createDummyGame.
	c := Controller new.
	g currentScene gameObjects first addBehaviour: c.
	test := 0.
	c finally: [ test := test + 1 ].
	g pulse.
	self assert: test equals: 1