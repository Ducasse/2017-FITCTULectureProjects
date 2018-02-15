tests
testApEvaluation

| ur mt et u1 u2 u3 u4 |
mt := OrderedCollection new.
et := OrderedCollection new.

u1 := Unit withName: 'Normal'.

u2 := Unit withName: 'Hitty'.
u2 ap: 3.

u3 := Unit withName: 'Dualist'.
u3 ap: 2.

u4 := Unit withName: 'Mario'.

mt add: u1.
et add: u2.
et add: u3.
et add: u4.

UnitResolver reset.
UnitResolver myTeam: mt enemyTeam: et. 
UnitResolver addMove: Move newRound.
UnitResolver addMove: (Move unit: u4 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u2 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u2 guarded: u3). 
UnitResolver addMove: (Move unit: u2 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u3 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u3 guarded: u2). 

ur := UnitResolver uniqueInstance.

self assert: (ur getHighestApUnit) equals: u2.

UnitResolver reset.
