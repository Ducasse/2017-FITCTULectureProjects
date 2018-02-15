updating
addMove: aMove

UniqueInstance ifNil: [ self error: 'UnitResolver is not prepared. Send myTeam:enemyTeam: once for initial preparation' ] ifNotNil: [ self uniqueInstance addMove: aMove. ]