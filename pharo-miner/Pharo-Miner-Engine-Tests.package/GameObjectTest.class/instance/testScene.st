tests
testScene
	| go s g |
	go := GameObject new.
	self assert: go scene isNil.
	s := Scene new.
	go scene: s.
	self assert: go scene equals: s.
	
	g := GameTest createDummyGame.
	self assert: g currentScene gameObjects first scene equals: g currentScene