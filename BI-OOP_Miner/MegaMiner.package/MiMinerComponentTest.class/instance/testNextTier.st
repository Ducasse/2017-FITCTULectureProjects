tests-accessing
testNextTier
	| tank |
	tank := MiTank new.
	self assert: (tank nextTier = 2).
	tank tier: tank nextTier.
	self assert: (tank nextTier = 3).
	
	"
	tank := MiTank atTier: (MiTank new allTiers size).
	self assert: (tank nextTier = tank allTiers size ).
	"
	