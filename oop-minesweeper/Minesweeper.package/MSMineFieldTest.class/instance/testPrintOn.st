tests
testPrintOn
	| field |
	field := MSMineField new.
	field coordinates: 10@10.
	self assert: field asString equals: 'M at: (10@10)'.