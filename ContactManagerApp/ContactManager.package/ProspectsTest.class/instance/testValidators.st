tests
testValidators
	| v a |
	v := Prospect new validators.
	self assert: v size equals: 9.
	a := v at: 1.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #pname.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	a := v at: 3.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #probability.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	a := v at: 5.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #revenue.
	self assert: (a at: 2) equals: 'RequiredValidator'.
	a := v at: 7.
	self assert: a size equals: 3.
	self assert: (a at: 1) equals: #mandays.
	self assert: (a at: 2) equals: 'RequiredValidator'.