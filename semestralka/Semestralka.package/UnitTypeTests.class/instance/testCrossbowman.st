tests
testCrossbowman
self assert: (UnitTypeCrossbowman  unitName) equals: 'Crossbowman'.
self assert: (UnitTypeCrossbowman maxHp ) equals: 40.
self assert: (UnitTypeCrossbowman maxXp ) equals: 50.
self assert: (UnitTypeCrossbowman attack ) equals: 18. "nutno doimplementovat"
self assert: (UnitTypeCrossbowman move ) equals: 2.
self assert: (UnitTypeCrossbowman lvl ) equals: 3.
self assert: (UnitTypeCrossbowman upgrades ) equals: nil .

     
