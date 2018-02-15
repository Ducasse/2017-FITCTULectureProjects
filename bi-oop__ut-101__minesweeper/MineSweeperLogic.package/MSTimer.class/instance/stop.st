running
stop
	enabled ifFalse: [ ^ self ].
 	enabled := false.
	process terminate