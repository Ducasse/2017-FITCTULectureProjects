querying
getFastestUnit

	| gUnit |
	gUnit := EnemyTeam detectMax: [ :each | each spdBelow. ].
	
^ self getSpecificUnit: gUnit.