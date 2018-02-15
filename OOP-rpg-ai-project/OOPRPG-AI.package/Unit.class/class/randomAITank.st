as yet unclassified
randomAITank
	| tmp |
	tmp := Unit randomTank.
	tmp nickname: RandomNameGen next.
	tmp stepDeleg: ((TankCollection new getRandom) withOwner: tmp).
	tmp isHuman: false.
	^ tmp.
