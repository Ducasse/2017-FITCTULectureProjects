tests
testProcessId
	| pl |
	pl := GamePulseLoop new.
	self assert: pl processId equals: pl defaultProcessId.
	pl processId: 'test'.
	self assert: pl processId equals: 'test'.
	
	[ pl processId: Object new. self fail: 'No exception on notString' ] on: Error do: [ ]
	