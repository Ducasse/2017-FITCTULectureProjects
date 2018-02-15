tests
testLastAction
	| history m1 m2 m3 m4 m5 |
	m1 := Step newFromDirection: Down new.
	m2 := Step newFromDirection: Down new.
	m3 := Step newFromDirection: Left new.
	m4 := Push newFromDirection: Up new.
	m5 := Step newFromDirection: Right new.
	history := History new.
	self assert: history lastAction class equals: NoMove.
	history addMove: m1.
	self assert: history lastAction equals: m1.
	history addMove: m2.
	self assert: history lastAction equals: m2.
	history addMove: m3.
	self assert: history lastAction equals: m3.
	history undo.
	self assert: history lastAction equals: m2.
	history redo.
	self assert: history lastAction equals: m3.
	history addMove: m4.
	self assert: history lastAction equals: m4.
	history undo.
	self assert: history lastAction equals: m3.
	history undo.
	self assert: history lastAction equals: m2.
	history addMove: m5.
	self assert: history lastAction equals: m5.
	history undo.
	self assert: history lastAction equals: m2.
	history undo.
	self assert: history lastAction equals: m1.
	history undo.
	self assert: history lastAction class equals: NoMove