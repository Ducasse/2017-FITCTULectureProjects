querying
getEnemyDamager

| units |
units := self getEnemyDamagers.
(units size < 1) ifTrue: [ ^nil ].
^ units removeFirst.