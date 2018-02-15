updating
newRound

| maxSpeedUnit |
maxSpeedUnit := MyTeam detectMax: [ :each | each spd ].

LastSpeed := maxSpeedUnit spd + 1.

EnemyTeam collect: [ :each |
					each newRound. ].