querying
getHighestApUnit

	| gUnit |
	gUnit := EnemyTeam detectMax: [ :each | each ap. ].
	
^ self getSpecificUnit: gUnit.