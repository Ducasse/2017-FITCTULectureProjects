tests
testChangeImageTo
	| r |
	r := MultiSpriteRenderer new.
	r image: #testImage.
	r announcer when: ImageChangeAnnouncement do: [ test := test + 1 ].
	test := 0.
	r changeImageTo: #testImage.
	self assert: test equals: 0.
	self assert: r image equals: #testImage.
	r changeImageTo: #testImageV2.
	self assert: test equals: 1.
	self assert: r image equals: #testImageV2.