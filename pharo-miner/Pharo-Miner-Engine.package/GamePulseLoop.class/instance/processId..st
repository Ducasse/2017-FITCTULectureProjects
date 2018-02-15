loop process
processId: aString
	aString isString
		ifFalse: [ ^ self error: 'Invalid process name' ].
	processid := aString