construction
uniqueInstance

UniqueInstance ifNil: [ self error: 'UnitResolver is not prepared. Send myTeam:enemyTeam: once for initial preparation' ] ifNotNil: [ ^ UniqueInstance ] 