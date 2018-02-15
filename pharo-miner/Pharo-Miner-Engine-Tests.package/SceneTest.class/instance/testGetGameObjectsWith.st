tests
testGetGameObjectsWith
	| g s |
	g := GameTest createDummyGame.
	s := g currentScene.
	self assert: (s getGameObjectsWith: Behaviour) isEmpty.
	s gameObjects first addBehaviour: Behaviour new.
	self assert: (s getGameObjectsWith: Behaviour) size equals: 1.
	s createGameObject addBehaviour: Transform new.
	self assert: (s getGameObjectsWith: Behaviour) size equals: 2.
	