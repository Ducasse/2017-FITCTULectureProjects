tests
testName
	| s t|
	t := 'hero'.
	s := Snake new.
	s name: t.
	self assert: s name equals: t.