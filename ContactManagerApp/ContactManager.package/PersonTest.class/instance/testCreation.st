tests
testCreation
	| contact |
	contact := Person
		firstName: 'Vlad'
		lastName: 'Khomchenko'
		email: 'khomcvla@fit.cvut.cz'
		phoneNumber: ''
		address: 'Thakurova 9'
		company: 'CVUT FIT'
		position: 'Student'.
	self assert: contact firstName equals: 'Vlad'.
	self assert: contact lastName equals: 'Khomchenko'.
	self assert: contact email equals: 'khomcvla@fit.cvut.cz'.
	self assert: contact phoneNumber equals: ''.
	self assert: contact address equals: 'Thakurova 9'.
	self assert: contact company equals: 'CVUT FIT'.
	self assert: contact position equals: 'Student'