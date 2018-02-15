tests
testAddGameObject
	| go g s |
	g := GameTest createDummyGame.
	s := g currentScene.
	go := GameObject new.
	s addGameObject: go.
	self assert: (s gameObjects includes: go).
	self assert: go scene equals: s