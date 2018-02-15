querying
getEnemyMage

| units |
units := self getEnemyMages.
(units size < 1) ifTrue: [ ^nil ].
^ units removeFirst.