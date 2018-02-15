tests
testValidators
	| v a |
	v := Company new validators.
	self assert: v size equals: 3.
	a := v at: 1.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #cname.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	a := v at: 2.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #country.
	self assert: (a at: 2) equals: 'RequiredOidValidator'.
	a := v at: 3.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #manager.
	self assert: (a at: 2) equals: 'RequiredOidValidator'