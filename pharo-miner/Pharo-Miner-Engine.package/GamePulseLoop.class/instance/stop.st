lifecycle
stop
	| currentprocess |
	(self running not or: [ loopprocess isNil ])
		ifTrue: [ ^ self ].
	
	currentprocess := loopprocess.
	loopprocess := nil.
	currentprocess terminate