tests
testInput
	| g c |
	g := GameTest createDummyGame.
	c := Controller new.
	g currentScene gameObjects first addBehaviour: c.
	self assert: c input equals: g input