querying
getEnemyDamagers

^ EnemyTeam collect: [ :each | 
		(each isDamager) ifTrue: [ 
			self getSpecificUnit: each.	
		 ] 
	] thenSelect: [ :unit | unit isNotNil ].