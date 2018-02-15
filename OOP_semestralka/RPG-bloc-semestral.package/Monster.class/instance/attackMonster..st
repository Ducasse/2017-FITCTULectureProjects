accessing
attackMonster: aMonster
"Will attack target monster"

^(aMonster beAttackedByMonster: self).

"
|perished damagereal|

perished := aMonster count.
damagereal := aMonster damage: attack.

perished := perished - (aMonster count).


Transcript show: (self textDatabase messageAboutDamage: self damage: damagereal targetMonster: aMonster);cr.

Transcript show: (self textDatabase messageAboutPerish: aMonster killed: perished);cr.

self onDamageDealt: damagereal monster: aMonster killed: perished.

consume movement
self movementCurrent: 0.

^damagereal"