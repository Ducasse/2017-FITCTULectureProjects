querying
getEnemyTank

| units |
units := self getEnemyTanks.
(units size < 1) ifTrue: [ ^nil ].
^ units removeFirst.