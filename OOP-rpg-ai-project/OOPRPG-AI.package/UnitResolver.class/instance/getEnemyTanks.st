querying
getEnemyTanks

^ EnemyTeam collect: [ :each | 
		(each isTank) ifTrue: [ 
			self getSpecificUnit: each.	
		 ]
	] thenSelect: [ :unit | unit isNotNil ].