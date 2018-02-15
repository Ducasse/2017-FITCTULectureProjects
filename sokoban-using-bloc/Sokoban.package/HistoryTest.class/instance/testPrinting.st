tests
testPrinting
	| history m1 m2 m3 m4 m5 |
	m1 := Step newFromDirection: Down new.
	m2 := Step newFromDirection: Down new.
	m3 := Step newFromDirection: Left new.
	m4 := Push newFromDirection: Up new.
	m5 := Step newFromDirection: Right new.
	history := History new.
	self assert: history printString equals: ''.
	history addMove: m1.
	self assert: history printString equals: 'd'.
	history addMove: m2.
	self assert: history printString equals: 'dd'.
	history addMove: m3.
	self assert: history printString equals: 'ddl'.
	self assert: history undo equals: m3.
	self assert: history printString equals: 'dd*l'.
	self assert: history redo equals: m3.
	history addMove: m4.
	self assert: history printString equals: 'ddlU'.
	self assert: history undo equals: m4.
	self assert: history undo equals: m3.
	self assert: history printString equals: 'dd*lU'.
	history addMove: m5.
	self assert: history printString equals: 'ddr'