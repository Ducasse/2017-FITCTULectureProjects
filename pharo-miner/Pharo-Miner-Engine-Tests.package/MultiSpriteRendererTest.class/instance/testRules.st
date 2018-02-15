tests
testRules
	| r col |
	r := MultiSpriteRenderer new.
	self assert: (r rules isKindOf: Collection).
	col := { [false]->#test . [true]->#test2 }.
	r rules: col.
	self assertCollection: r rules hasSameElements: col