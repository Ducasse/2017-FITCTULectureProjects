tests
testWarrior
self assert: (UnitTypeWarrior   unitName) equals: 'Warrior'.
self assert: (UnitTypeWarrior maxHp ) equals: 35.
self assert: (UnitTypeWarrior maxXp ) equals: 40.
self assert: (UnitTypeWarrior attack ) equals: 10. "nutno doimplementovat"
self assert: (UnitTypeWarrior move ) equals: 2.
self assert: (UnitTypeWarrior lvl ) equals: 2.
self assert: (UnitTypeWarrior upgrades ) equals: UnitTypeChieftan  .

     
