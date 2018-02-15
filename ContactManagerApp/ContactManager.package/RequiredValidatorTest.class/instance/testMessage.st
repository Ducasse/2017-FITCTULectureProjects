tests
testMessage
| v |
	v := RequiredValidator new.
	v validateValue: '' withDisplayFieldName: 'TestField'.
	self assert: v getMessage equals: '"TestField" field is required'.