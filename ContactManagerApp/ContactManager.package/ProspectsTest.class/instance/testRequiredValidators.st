tests
testRequiredValidators
	| v |
	v := Prospect new validators.
	self assert: v size equals: 9.
	self assert: (v select: [ :i | (i at: 2) = 'RequiredValidator' ]) size equals: 4.
	self assert: (v select: [ :i | (i at: 2) = 'RequiredOidValidator' ]) size equals: 2.
	self assert: (v select: [ :i | (i at: 2) = 'RangeValidator' ]) size equals: 3