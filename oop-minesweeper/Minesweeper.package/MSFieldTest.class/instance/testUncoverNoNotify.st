tests
testUncoverNoNotify
	| field previousValue announced |
	announced := false.
	field := MSNumberField new.
	field announcer when: MSFieldUncoveredAnnoucement do: [ announced := true ].
	
	previousValue := field covered.
	field uncoverNoNotify.
	
	self assert: (previousValue ~= field covered).
	self assert: announced equals: false.