tests
testLastSpellcaster

| ur mt et u1 u2 u3 |
mt := OrderedCollection new.
et := OrderedCollection new.

u1 := Unit withName: 'Target'.

u2 := Unit withName: 'Witch'.

u3 := Unit withName: 'Duelist'.
u3 ap: 2.

mt add: u1.
et add: u2.
et add: u3.

UnitResolver reset.
UnitResolver myTeam: mt enemyTeam: et. 
UnitResolver addMove: Move newRound.
UnitResolver addMove: (Move unit: u1 cast: Karma on: u2 ). 
UnitResolver addMove: (Move unit: u2 cast: Poison on: u1). 
UnitResolver addMove: (Move unit: u3 attacked: u1 dealing: 1). 
UnitResolver addMove: (Move unit: u3 guarded: u2). 

ur := UnitResolver uniqueInstance.

self assert: (ur getLastSpellcaster) equals: u2.

UnitResolver reset.
