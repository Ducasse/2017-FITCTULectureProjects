tests
testNew
	|d|
	d := Die new: 3.
	self assert: d faces equals: 3.