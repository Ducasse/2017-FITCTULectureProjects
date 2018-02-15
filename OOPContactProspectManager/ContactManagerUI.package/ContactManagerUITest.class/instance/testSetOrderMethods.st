tests
testSetOrderMethods
	|c l|
	c := ContactManagerWindow new.
	l := OrderedCollection new.
	l 	add: FirstNameOrder new;
		add: LastNameOrder new.
	
	self assert: (c sidebar contactList listTools orderMethodsList getList size) equals: 2.