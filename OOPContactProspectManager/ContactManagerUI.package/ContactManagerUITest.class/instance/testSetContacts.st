tests
testSetContacts
	|c l|
	c := ContactManagerWindow new.

	l := OrderedCollection new.
	l add: (Contact new id:1; firstName: 'John'; yourself).
	l add: (Contact new id:2; firstName: 'Mary'; yourself).
	l add: (Contact new id:3; firstName: 'Sam'; yourself).

	c sidebar contactList contacts: l.
	
	self assert: (c sidebar contactList listView getList size) equals: 3.
	self assert: (c sidebar contactList listView getList first firstName) equals: 'John'.