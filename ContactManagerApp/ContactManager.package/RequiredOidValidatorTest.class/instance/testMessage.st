tests
testMessage
| v |
	v := RequiredOidValidator new.
	v validateValue: '' withDisplayFieldName: 'TestField'.
	self assert: v getMessage equals: '"TestField" field is required'.