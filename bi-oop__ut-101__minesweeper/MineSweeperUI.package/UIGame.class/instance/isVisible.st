testing
isVisible
	window isNotNil
	ifTrue: [  
		(window host) isNotNil 
			ifTrue: [ 
				^ (window host) isRunning
			 ]
	].

	^ false.