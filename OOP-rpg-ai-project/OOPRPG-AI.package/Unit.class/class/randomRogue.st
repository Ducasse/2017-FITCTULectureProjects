as yet unclassified
randomRogue
	| tmp random|
	random := Random new.
	tmp := Unit new.
	tmp nickname: RandomNameGen next.
	tmp nickname: tmp nickname, ' the Unseen'.
	tmp ap: 2.
	tmp atk: 5 randomStat.
	tmp def: 3 randomStat.
	tmp hp: 4 randomStat.
	tmp mp: 3 randomStat.
	tmp mpwr: 3 randomStat.
	tmp spd: 4 randomStat.
		tmp isHuman: true.
	^ tmp.