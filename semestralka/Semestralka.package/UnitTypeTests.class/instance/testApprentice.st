tests
testApprentice
self assert: (UnitTypeApprentice  unitName) equals: 'Apprentice'.
self assert: (UnitTypeApprentice maxHp ) equals: 20.
self assert: (UnitTypeApprentice maxXp ) equals: 20.
self assert: (UnitTypeApprentice attack ) equals: 7. "nutno doimplementovat"
self assert: (UnitTypeApprentice move ) equals: 2.
self assert: (UnitTypeApprentice lvl ) equals: 1.
self assert: (UnitTypeApprentice upgrades ) equals: UnitTypeMage  .

     
