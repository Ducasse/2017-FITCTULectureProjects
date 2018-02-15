tests
testCurrentScene
	| g s |
	g := Game new.
	s := Scene new.
	g addScene: s.
	self assert: g currentScene equals: s.
	g addScene: Scene new.
	self assert: g currentScene equals: s.