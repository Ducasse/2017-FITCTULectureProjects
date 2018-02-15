querying
getEnemyMages

^ EnemyTeam collect: [ :each | 
		(each isMage) ifTrue: [ 
			self getSpecificUnit: each.	
		 ]
	] thenSelect: [ :unit | unit isNotNil ].