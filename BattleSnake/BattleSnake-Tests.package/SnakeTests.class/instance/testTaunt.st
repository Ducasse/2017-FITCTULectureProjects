tests
testTaunt
	| s t|
	t := 'git gud'.
	s := Snake new.
	s taunt: t.
	self assert: s taunt equals: t.