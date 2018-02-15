tests
testStart
	| g r |
	g := GameTest createDummyGame.
	r := Renderer new.
	g currentScene gameObjects first addBehaviour: r.
	g globalAnnouncer when: NewRendererAnnouncement do: [ test := 13 ].
	g startAnnounce.
	self assert: test equals: 13