tests
testTeamFinder

| ur mt et u1 u2 |
mt := OrderedCollection new.
et := OrderedCollection new.

u1 := Unit withName: 'Ferdinand'.
u1 hp: 7.

u2 := Unit withName: 'Kathrine'.

mt add: u1.

UnitResolver reset.
UnitResolver myTeam: mt enemyTeam: et. 
ur := UnitResolver uniqueInstance.

self assert: (ur isUnitMine: u2) equals: false. 
self assert: (ur isUnitMine: u1) equals: true.

UnitResolver reset.
