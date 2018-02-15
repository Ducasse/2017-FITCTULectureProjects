tests
testPosition
	| g r t |
	g := GameTest createDummyGame.
	r := Renderer new.
	t := Transform new.
	g currentScene gameObjects first addBehaviour: t; addBehaviour: r.
	self assert: r position equals: (g currentScene convertCoordinates: 0@0).
	t position: 1@2.
	r offset: 2@8.
	self assert: r position equals: (g currentScene convertCoordinates: 3@10).