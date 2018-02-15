tests
testId
	| s t|
	t := 111.
	s := Snake new.
	s id: t.
	self assert: s id equals: t.