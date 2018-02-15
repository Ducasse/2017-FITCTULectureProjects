as yet unclassified
randomWarrior
	| tmp random|
	random := Random new.
	tmp := Unit new.
	tmp nickname: RandomNameGen next.
		tmp nickname: tmp nickname, ' the Strong'.
	tmp ap: 1.
	tmp atk: 5 randomStat.
	tmp def: 3 randomStat.
	tmp hp: 3 randomStat.
	tmp mp: 3 randomStat.
	tmp mpwr: 3 randomStat.
	tmp spd: 3 randomStat.
		tmp isHuman: true.
	^ tmp.
	