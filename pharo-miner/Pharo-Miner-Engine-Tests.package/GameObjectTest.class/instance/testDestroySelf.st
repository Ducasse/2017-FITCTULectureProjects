tests
testDestroySelf
	| go g |
	go := GameObject new.
	g := GameTest createDummyGame.
	g currentScene addGameObject: go.
	go announcer when: DestroySelfEvent do: [ test := 18 ].
	go destroySelf.
	self assert: (g currentScene gameObjects includes: go) not.
	self assert: go scene isNil.
	self assert: test equals: 18