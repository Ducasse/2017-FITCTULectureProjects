tests
testOnKeyPressedDo
	| g c |
	g := GameTest createDummyGame.
	c := Controller new.
	g currentScene gameObjects first addBehaviour: c.
	test := 0.
	c onKeyPressed: (Key a) do: [ test := test + 1 ].
	g input setKey: Key a state: KeyState pressed.
	g pulse.
	self assert: test equals: 1