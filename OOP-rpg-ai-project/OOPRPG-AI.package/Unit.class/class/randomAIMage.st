as yet unclassified
randomAIMage
	| tmp |
	tmp := Unit randomMage.
	tmp nickname: RandomNameGen next.
	tmp stepDeleg: ((MageCollection new getRandom) withOwner: tmp).
		tmp isHuman: false.
		^ tmp.