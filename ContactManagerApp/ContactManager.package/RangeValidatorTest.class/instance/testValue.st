tests
testValue
	| vr |
	vr := RangeValidator new validateValue: -1 withDisplayFieldName: 'TestField' withParams: #(0 100).
	self assert: vr equals: false.
	vr := RangeValidator new validateValue: 101 withDisplayFieldName: 'TestField' withParams: #(0 100).
	self assert: vr equals: false.
	vr := RangeValidator new validateValue: 1 withDisplayFieldName: 'TestField' withParams: #(0 100).
	self assert: vr equals: true