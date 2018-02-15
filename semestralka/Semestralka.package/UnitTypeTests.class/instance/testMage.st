tests
testMage
self assert: (UnitTypeMage unitName) equals: 'Mage'.
self assert: (UnitTypeMage maxHp ) equals: 35.
self assert: (UnitTypeMage maxXp ) equals: 30.
self assert: (UnitTypeMage attack ) equals: 14. "nutno doimplementovat"
self assert: (UnitTypeMage move ) equals: 2.
self assert: (UnitTypeMage lvl ) equals: 2.
self assert: (UnitTypeMage upgrades ) equals: UnitTypeArchmage  .

     
