tests
testUncover
	| field previousValue announced |
	announced := false.
	field := MSNumberField new.
	field announcer when: MSFieldUncoveredAnnoucement do: [ announced := true ].
	
	previousValue := field covered.
	field uncover.
	
	self assert: (previousValue ~= field covered).
	self assert: announced equals: true.