tests
testCoordinates
	| field |

	field := MSNumberField new.
	field coordinates: 2@5.
	self assert: field coordinates equals: 2@5.