tests
testFromDictionary
	| s d|
	d := Dictionary new.
	d at: #coords put: { #[1 1]. #[1 2] }.
	d at: #health_points put: 100.
	d at: #id put: 'ab-54a'.
	d at: #name put: 'pharoguy'.
	d at: #taunt put: 'git better'.
	s := Snake fromDictionary: d.
	
	self assert: s name equals: 'pharoguy'.
	self assert: s id equals: 'ab-54a'.
	self assert: s taunt equals: 'git better'.
	self assert: s health  equals: 100.
	self assert: s coordinates  equals: { 2@2. 2@3 }.