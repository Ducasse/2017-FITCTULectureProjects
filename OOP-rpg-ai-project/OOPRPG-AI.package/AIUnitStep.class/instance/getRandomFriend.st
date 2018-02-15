helper methods
getRandomFriend
	|friendlyTeam|
	friendlyTeam := self getFriendlyTeam.
	^ friendlyTeam shuffled first