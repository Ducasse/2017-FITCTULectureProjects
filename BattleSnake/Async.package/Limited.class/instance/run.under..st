dispatching
run: aBlock  under: aTimeout
	| process |
	running ifFalse: [ 
		process := aBlock fork .
		[
			aTimeout milliSeconds asDelay wait .
			process terminate .
			self running: false .
		 ] fork .
		 ] .