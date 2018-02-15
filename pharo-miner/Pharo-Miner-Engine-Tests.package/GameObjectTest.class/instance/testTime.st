tests
testTime
	| g |
	g := GameTest createDummyGame.
	self assert: g currentScene gameObjects first time equals: g gameloop