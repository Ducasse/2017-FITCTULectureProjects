lifecycle
start
	(self running or: [ loopprocess isNotNil ])
		ifTrue: [ ^ self ].
	
	loopprocess := self createLoopProcess.
	self pulseStartTime: Time millisecondClockValue.
	loopprocess resume.