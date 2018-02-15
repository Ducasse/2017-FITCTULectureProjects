tests
testArcher
self assert: (UnitTypeArcher  unitName) equals: 'Archer'.
self assert: (UnitTypeArcher maxHp ) equals: 30.
self assert: (UnitTypeArcher maxXp ) equals: 40.
self assert: (UnitTypeArcher attack ) equals: 12. "nutno doimplementovat"
self assert: (UnitTypeArcher move ) equals: 4.
self assert: (UnitTypeArcher lvl ) equals: 2.
self assert: (UnitTypeArcher upgrades ) equals: UnitTypeCrossbowman .

     
