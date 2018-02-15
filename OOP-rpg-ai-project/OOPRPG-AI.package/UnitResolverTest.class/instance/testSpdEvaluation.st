tests
testSpdEvaluation

| ur mt et u1 u2 u3 u4 |
mt := OrderedCollection new.
et := OrderedCollection new.

u1 := Unit withName: 'Slowy'.
u1 spd: 4.

u2 := Unit withName: 'Speedy'.
u2 spd: 9.

u3 := Unit withName: 'Slimey'.
u3 spd: 1.

u4 := Unit withName: 'Flash'.
u4 spd: 11.

mt add: u1.
mt add: u2.
et add: u3.
et add: u4.

UnitResolver reset.
UnitResolver myTeam: mt enemyTeam: et. 
UnitResolver addMove: Move newRound.
UnitResolver addMove: (Move unit: u4 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u2 attacked: u4 dealing: 1). 
UnitResolver addMove: (Move unit: u1 attacked: u4 dealing: 1). 
UnitResolver addMove: (Move unit: u3 attacked: u1 dealing: 1). 

ur := UnitResolver uniqueInstance.

self assert: (ur getFastestUnit) equals: u4.

UnitResolver reset.
