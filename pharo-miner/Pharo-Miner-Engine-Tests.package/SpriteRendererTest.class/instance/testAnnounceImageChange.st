tests
testAnnounceImageChange
	| r |
	r := SpriteRenderer new.
	r announcer when: ImageChangeAnnouncement do: [ test := 16 ].
	r announceImageChange.
	self assert: test equals: 16