tests
testClassRecognition

| ur mt et u1 eHealer eTank eDamager eMage |
mt := OrderedCollection new.
et := OrderedCollection new.

u1 := Unit withName: 'Target'.
u1 hp: 99.

eHealer := Unit withName: 'Witch Doctor'.
eHealer mp: 10.
eHealer mpwr: 3.

eMage := Unit withName: 'Garfield the Grey'.
eMage mp: 15.
eMage mpwr: 5.

eTank := Unit withName: 'Tarthine of Bryen'.
eTank hp: 54.
eTank atk: 4.

eDamager := Unit withName: 'Killy the Wid'.
eDamager hp: 15.
eDamager atk: 13.

mt add: u1.
et add: eTank; add: eHealer; add: eDamager; add: eMage.

UnitResolver reset.
UnitResolver myTeam: mt enemyTeam: et. 
UnitResolver addMove: Move newRound.
UnitResolver addMove: (Move unit: eMage cast: Poison on: u1). 
UnitResolver addMove: (Move unit: eDamager  attacked: u1 dealing: 14). 
UnitResolver addMove: (Move unit: eTank guarded: eHealer). 
UnitResolver addMove: (Move unit: eHealer cast: CureDebuff on: eTank). 

ur := UnitResolver uniqueInstance.

self assert: (ur getEnemyDamager) equals: eDamager.
self assert: (ur getEnemyHealer) equals: eHealer.
self assert: (ur getEnemyTank) equals: eTank.
self assert: (ur getEnemyMage) equals: eMage.

UnitResolver reset.
