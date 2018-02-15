tests
testGetCamera
	| g s c1 c2 |
	g := GameTest createDummyGame.
	s := g currentScene.
	c1 := Camera new.
	s gameObjects first addBehaviour: c1.
	self assert: (s getCamera: 1) equals: c1.
	c2 := Camera new.
	s createGameObject addBehaviour: c2.
	self assert: (s getCamera: 1) equals: c1.
	self assert: (s getCamera: 2) equals: c2
	