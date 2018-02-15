as yet unclassified
randomTank
	| tmp random|
	random := Random new.
	tmp := Unit new.
	tmp nickname: RandomNameGen next.
	tmp nickname: tmp nickname, ' the Tough'.
	tmp ap: 1.
	tmp atk: 3 randomStat.
	tmp def: 5 randomStat.
	tmp hp: 7 randomStat.
	tmp mp: 2 randomStat.
	tmp mpwr: 2 randomStat.
	tmp spd: 3 randomStat.
		tmp isHuman: true.
	^ tmp.
	