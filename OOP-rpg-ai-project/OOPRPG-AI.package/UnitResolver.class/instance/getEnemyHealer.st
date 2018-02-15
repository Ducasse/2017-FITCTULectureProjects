querying
getEnemyHealer

| units |
units := self getEnemyHealers.
(units size < 1) ifTrue: [ ^nil ].
^ units removeFirst.