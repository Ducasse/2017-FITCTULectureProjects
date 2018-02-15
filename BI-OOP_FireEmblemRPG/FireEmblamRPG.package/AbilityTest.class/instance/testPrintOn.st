tests
testPrintOn
	| ability |
	ability := Ability new.
	ability value: 12.
	self assert:(ability asString = '12').