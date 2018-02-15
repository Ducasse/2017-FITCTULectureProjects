tests
testValidators
	| v a |
	v := Person new validators.
	self assert: v size equals: 3.
	a := v at: 1.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #firstName.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	self assert: (a at: 3) equals: 'First Name'.
	a := v at: 2.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #lastName.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	self assert: (a at: 3) equals: 'Last Name'.
	a := v at: 3.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #company.
	self assert: (a at: 2) equals: 'RequiredOidValidator'.
	self assert: (a at: 3) equals: 'Company'