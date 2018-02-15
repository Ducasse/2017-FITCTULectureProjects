accessing
beAttackedByMonster: aMonster
"Will be attacked by a monster"
|perished damagereal|

perished := self count.
damagereal := self damage: (aMonster attack).

perished := perished - (self count).


Transcript show: (self textDatabase messageAboutDamage: aMonster damage: damagereal targetMonster: aMonster);cr.

Transcript show: (self textDatabase messageAboutPerish: self killed: perished);cr.

aMonster onDamageDealt: damagereal monster: aMonster killed: perished.

"consume movement"
aMonster movementCurrent: 0.

^damagereal