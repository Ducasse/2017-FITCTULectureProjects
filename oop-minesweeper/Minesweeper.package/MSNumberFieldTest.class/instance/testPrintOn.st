tests
testPrintOn
	| field |
	field := MSNumberField new.
	field number: 5.
	field coordinates: 10@10.
	self assert: field asString equals: '5 at: (10@10)'.
	