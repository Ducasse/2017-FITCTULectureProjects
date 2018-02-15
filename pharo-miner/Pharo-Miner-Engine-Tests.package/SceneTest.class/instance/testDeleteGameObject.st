tests
testDeleteGameObject
	| go g s |
	g := GameTest createDummyGame.
	s := g currentScene.
	go := s gameObjects first.
	s deleteGameObject: go.
	self assert: (s gameObjects includes: go) not.
	self assert: go scene isNil