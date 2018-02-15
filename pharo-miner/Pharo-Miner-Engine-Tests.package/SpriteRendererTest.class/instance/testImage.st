tests
testImage
	| r |
	r := SpriteRenderer new.
	r announcer when: ImageChangeAnnouncement do: [ test := 15 ].
	r image: #testImage.
	self assert: r image equals: #testImage.
	self assert: test equals: 15
	