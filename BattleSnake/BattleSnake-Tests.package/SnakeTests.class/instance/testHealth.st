tests
testHealth
	| s |
	s := Snake new.
	s health: 10.
	self assert: s health equals: 10.