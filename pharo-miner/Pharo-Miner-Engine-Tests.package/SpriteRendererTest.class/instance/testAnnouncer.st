tests
testAnnouncer
	| r |
	r := SpriteRenderer new.
	self assert: (r announcer isKindOf: Announcer)