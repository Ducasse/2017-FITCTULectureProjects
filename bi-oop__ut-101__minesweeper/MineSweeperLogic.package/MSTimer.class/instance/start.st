running
start
	enabled
		ifTrue: [ ^ self ].
	enabled := true.
	process := [ self spawnProcess ] fork