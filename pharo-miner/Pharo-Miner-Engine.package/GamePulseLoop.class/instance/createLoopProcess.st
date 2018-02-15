loop process
createLoopProcess
	^ self createLoopTask newProcess
		name: self processId;
		yourself