updating
unitDied: aUnit

| gUnit |

UniqueInstance ifNil: [ self error: 'UnitResolver is not prepared. Send myTeam:enemyTeam: once for initial preparation' ] ifNotNil: [

(self uniqueInstance isUnitMine: aUnit)
	ifTrue: [ "Technically nothing, but we will see" ] 
	ifFalse: [ 
			gUnit := self uniqueInstance getGenericUnit: aUnit.
			(LastSpellcaster == gUnit) ifTrue: [ 
				 	LastSpellcaster := nil.
					"getMage might be better"
				].		
			EnemyTeam remove: gUnit.
			EnemyIDs removeKey: aUnit.
		 ].
] 