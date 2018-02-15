tests
testPrintOn
	|dummyname dummysurname contact|
	dummyname := 'test'.
	dummysurname := 'testsurname'.
	contact := Contact new.
	contact firstName: dummyname; lastName: dummysurname.
	self assert: (contact asString) equals: 'test testsurname'.