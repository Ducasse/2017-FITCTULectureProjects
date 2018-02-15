construction
myTeam: mTeam enemyTeam: eTeam
	"Constructor that takes complete information about the AI team and basic information about the enemy team"
	LastSpellcaster := nil.
	LastSpeed := nil.

	MyTeam:= mTeam.
	EnemyIDs:= Dictionary new.
	EnemyTeam:= (eTeam collect: [ :each | |gUnit| 
			gUnit := GenericUnit fromUnit: each.
			EnemyIDs at: each put: gUnit.
			gUnit.
		]).
	UniqueInstance := super new.
	^UniqueInstance.