initialization
initializeByValues: dictionary
	| instance |
	instance := self new.
	
	dictionary keysAndValuesDo: [ :key :value |
			instance addValue: value at: key 
		].
	^ instance