tests
testChangesWhenContactSelected
	|c l k|
	c := ContactManagerWindow new.

	l := OrderedCollection new.
	k := Contact new id:1; firstName: 'John'; lastName: 'Smith'.
	l add: k.
	l add: (Contact new id:2; firstName: 'Mary'; yourself).
	l add: (Contact new id:3; firstName: 'Sam'; yourself).

	c sidebar contactList contacts: l.
	c sidebar contactList listView setSelectedItem: k.
	
	self assert: (c contactDetails contactProfile nameLabel label) equals: 'John Smith'.