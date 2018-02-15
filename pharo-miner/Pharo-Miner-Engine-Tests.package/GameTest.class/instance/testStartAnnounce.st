tests
testStartAnnounce
	| g s go |
	g := Game new.
	s := Scene new.
	g addScene: s.
	go := GameObject new.
	s addGameObject: go.
	test := 0.
	g announcer when: StartAnnouncement do: [ test := test + 1 ].
	go announcer when: StartAnnouncement do: [ test := test + 100 ].
	g startAnnounce.
	self assert: test equals: 101