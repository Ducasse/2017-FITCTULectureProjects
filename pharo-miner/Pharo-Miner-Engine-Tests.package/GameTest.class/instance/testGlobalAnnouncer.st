tests
testGlobalAnnouncer
	| g |
	g := Game new.
	self assert: (g globalAnnouncer isKindOf: Announcer).
	self assert: g announcer equals: g globalAnnouncer