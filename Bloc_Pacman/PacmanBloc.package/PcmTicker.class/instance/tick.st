running
tick
	running
		ifFalse: [ ^ self ].
	events copy
		do: [ :each | 
			each at: 1 put: (each at: 1) - delay millisecondDelayDuration.
			(each at: 1) = 0
				ifTrue: [ events remove: each.
					(each at: 2) value ] ].
	delay wait.
	self tick