tests
testValue
	| vr |
	vr := RequiredValidator new validateValue: '' withDisplayFieldName: 'TestField'.
	self assert: vr equals: false.
	vr := RequiredValidator new validateValue: '   ' withDisplayFieldName: 'TestField'.
	self assert: vr equals: false.
	vr := RequiredValidator new validateValue: nil withDisplayFieldName: 'TestField'.
	self assert: vr equals: false.
	vr := RequiredValidator new validateValue: ' t  ' withDisplayFieldName: 'TestField'.
	self assert: vr equals: true.
	vr := RequiredValidator new validateValue: 0 withDisplayFieldName: 'TestField'.
	self assert: vr equals: true