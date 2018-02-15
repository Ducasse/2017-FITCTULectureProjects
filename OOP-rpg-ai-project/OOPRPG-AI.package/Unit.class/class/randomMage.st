as yet unclassified
randomMage
	| tmp random|
	random := Random new.
	tmp := Unit new.
	tmp nickname: RandomNameGen next.
	tmp nickname: tmp nickname, ' the Wise'.
	tmp ap: 1.
	tmp atk: 2 randomStat.
	tmp def: 3 randomStat.
	tmp hp: 3 randomStat.
	tmp mp: 8 randomStat.
	tmp mpwr: 6 randomStat.
	tmp spd: 4 randomStat.
	tmp isHuman: true.
	^ tmp.
	