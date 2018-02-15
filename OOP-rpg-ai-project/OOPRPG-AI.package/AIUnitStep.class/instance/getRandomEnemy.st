helper methods
getRandomEnemy
	|enemyTeam|
	enemyTeam := self getEnemyTeam.
	^ enemyTeam shuffled first