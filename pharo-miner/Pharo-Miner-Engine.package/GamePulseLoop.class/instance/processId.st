loop process
processId
	processid ifNil: [ ^ self defaultProcessId ].
	^ processid