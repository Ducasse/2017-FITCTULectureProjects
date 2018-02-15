tests
testPulse
	| g s go |
	g := Game new.
	s := Scene new.
	g addScene: s.
	go := GameObject new.
	s addGameObject: go.
	test := 0.
	go announcer when: UpdateEvent do: [ test := test + 100 ].
	g pulse.
	self assert: test equals: 100