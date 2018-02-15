accessing
prospectStates
	| dict |
	dict := Dictionary new.
	dict at: 1 put: 'Opened'.
	dict at: 2 put: 'Closed'.
	dict at: 3 put: 'Won'.
	dict at: 4 put: 'Lost'.
	^ dict