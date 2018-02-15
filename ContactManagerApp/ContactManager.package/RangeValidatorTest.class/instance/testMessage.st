tests
testMessage
	| v |
	v := RangeValidator new.
	v validateValue: -5 withDisplayFieldName: 'TestField' withParams: #(0 100).
	self assert: v getMessage equals: '"TestField" field is not in the range between 0 and 100'