as yet unclassified
withTick: aNumber
	aNumber < 1
		ifTrue: [ self error: 'PcmTicker tick must have duration at least 1 millisecond' ].
	^ self basicNew running: false; delay: aNumber milliSeconds asDelay; yourself