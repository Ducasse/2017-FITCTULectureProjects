tests-accessing
testMoneyText
	| tank |
	tank := MiTank new.
	self assert: (tank moneyText = (tank nextUpgrade price asString , ' $')).
	
	tank := MiTank atTier: (MiTank new allTiers size).
	self assert: (tank moneyText = 'MAX').