dispatching
start
	active
		ifFalse: [ active := true.
			process := [ timeLeft milliSeconds asDelay wait.
			callback value: value.
			after value.
			active := false.] fork ].
	^ self