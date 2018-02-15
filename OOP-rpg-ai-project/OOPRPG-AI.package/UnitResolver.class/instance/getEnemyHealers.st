querying
getEnemyHealers

^ EnemyTeam collect: [ :each | 
		(each isHealer) ifTrue: [ 
			self getSpecificUnit: each.	
		 ]
	] thenSelect: [ :unit | unit isNotNil ].