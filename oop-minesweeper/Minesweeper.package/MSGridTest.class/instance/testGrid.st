test actions
testGrid
	| grid m1 m2 |
	m1 := Matrix rows: 2 columns: 5.
	m2 := Matrix rows: 8 columns: 4.
	grid := MSGrid new.
	grid grid: m1.
	self assert: grid grid equals: m1.
	grid grid: m2.
	self assert: grid grid equals: m2.
	