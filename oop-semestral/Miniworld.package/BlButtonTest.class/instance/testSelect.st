tests-accessing
testSelect
	| b |
	b := BlButtonFactory materialWithText: 'test'.
	self assert: b selectable not.
	b := BlButtonFactory selectableRippleWithText: 'test'.
	self assert: b selectable.
	self assert: b selected not.
	BlSpace simulateClickOn: b.
	self assert: b selected.