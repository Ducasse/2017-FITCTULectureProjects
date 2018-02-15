tests
testCreateGameObject
	| go g s |
	g := GameTest createDummyGame.
	s := g currentScene.
	go := s createGameObject.
	self assert: (s gameObjects includes: go).
	self assert: go scene equals: s