tests
testToggleMark
	| field n1 announced neighbourAnnounced |
	announced := false.
	field := MSNumberField new.
	field announcer when: MSFieldMarkedAnnoucement do: [ announced := true ].
	field number: 1.
	n1 := MSNumberField new.
	n1 announcer when: MSNeighbourMarkedAnnoucement do: [ neighbourAnnounced := true ].
	field addNeighbour: n1.
	
	self assert: field marked equals: false.
	field toggleMark.
	self assert: announced equals: true.
	self assert: field marked equals: true.
	self assert: neighbourAnnounced equals: true.
	
	field toggleMark.
	self assert: field marked equals: false.