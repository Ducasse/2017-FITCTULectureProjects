tests
testValue
	| vr |
	vr := RequiredOidValidator new validateValue: nil withDisplayFieldName: 'TestField'.
	self assert: vr equals: false.
	vr := RequiredOidValidator new validateValue: 1 withDisplayFieldName: 'TestField'.
	self assert: vr equals: true