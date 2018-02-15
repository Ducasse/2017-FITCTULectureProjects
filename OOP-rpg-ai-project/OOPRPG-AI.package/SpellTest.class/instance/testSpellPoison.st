tests
testSpellPoison
	| a b buffDuration |
	Transcript show: '-----Running Poison spell test.-----'.
	Transcript cr.
	a := Unit new.
	b := Unit new.
	a nickname: 'A'.
	b nickname: 'B'.
	b ap: 1.
	b def: 0.
	a mpwr: 50.
	b hp: 110.
	a castSpell: Poison onTarget: b.
	b update.
	self assert: b dead not.
	b update.
	self assert: b dead not.
	b update.
	self assert: b dead