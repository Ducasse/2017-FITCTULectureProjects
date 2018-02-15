tests
testArchmage
self assert: (UnitTypeArchmage unitName) equals: 'Archmage'.
self assert: (UnitTypeArchmage maxHp ) equals: 45.
self assert: (UnitTypeArchmage maxXp ) equals: 45.
self assert: (UnitTypeArchmage attack ) equals: 21. "nutno doimplementovat"
self assert: (UnitTypeArchmage move ) equals: 2.
self assert: (UnitTypeArchmage lvl ) equals: 3.
self assert: (UnitTypeArchmage upgrades ) equals: nil  .

     
