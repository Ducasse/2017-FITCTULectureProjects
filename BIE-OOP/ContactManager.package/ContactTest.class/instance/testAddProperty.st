tests
testAddProperty
	|methodname dummy contact|
	dummy := 'Test'.
	methodname := 'test'.
	contact := Contact new.
	contact addProperty: methodname.
	contact property: methodname put: dummy.
	self assert: (contact property: methodname) equals: dummy.