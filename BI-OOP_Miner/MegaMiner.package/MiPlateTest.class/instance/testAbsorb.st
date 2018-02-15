tests-accessing
testAbsorb
	| plate |
	plate := MiPlate new.
	
	self assert: ((plate absorb: 100) = 95).
	self assert: ((plate absorb: 0) = 0).
	self assert: ((plate absorb: -12) = 0).
	
	plate := MiPlate atTier: (MiPlate new allTiers size).
	self assert: ((plate absorb: 3000) = 2980).
	self assert: ((plate absorb: -12) = 0).