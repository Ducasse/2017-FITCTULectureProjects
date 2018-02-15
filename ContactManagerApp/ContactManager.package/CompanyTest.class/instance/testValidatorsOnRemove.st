tests
testValidatorsOnRemove
	"There is only one validator on remove"

	| v a |
	v := Company new validatorsOnRemove.
	self assert: v size equals: 1.
	a := v at: 1.
	self assert: (a at: 1) equals: 'RemoveCompanyValidator'