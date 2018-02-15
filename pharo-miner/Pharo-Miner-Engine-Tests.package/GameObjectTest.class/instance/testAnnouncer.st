tests
testAnnouncer
	| g |
	g := GameObject new.
	self assert: (g announcer isKindOf: Announcer)