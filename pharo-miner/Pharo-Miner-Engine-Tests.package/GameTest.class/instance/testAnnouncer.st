tests
testAnnouncer
	| g a |
	g := Game new.
	self assert: (g announcer isKindOf: Announcer).
	a := Announcer new.
	g announcer: a.
	self assert: g announcer equals: a.