tests
testHunter
self assert: (UnitTypeHunter unitName) equals: 'Hunter'.
self assert: (UnitTypeHunter maxHp ) equals: 20.
self assert: (UnitTypeHunter maxXp ) equals: 30.
self assert: (UnitTypeHunter attack ) equals: 6. "nutno doimplementovat"
self assert: (UnitTypeHunter move ) equals: 2.
self assert: (UnitTypeHunter lvl ) equals: 1.
self assert: (UnitTypeHunter upgrades ) equals: UnitTypeArcher.

     
