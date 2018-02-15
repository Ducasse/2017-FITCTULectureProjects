as yet unclassified
randomAIDPS
	| tmp |
	3 atRandom = 1 ifTrue: [ tmp := Unit randomRogue ] ifFalse: [ tmp := Unit randomWarrior ].
	tmp nickname: RandomNameGen next.
	tmp stepDeleg: ((DPSCollection new getRandom) withOwner: tmp).
	tmp isHuman: false.
		^ tmp.