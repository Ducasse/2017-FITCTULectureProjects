events
onItIsYourTurn
	"Call this when it is his turn"

	currentlyPlayingMonster := (self currentlyPlayingMonster).
	
	Transcript show: (((self textDatabase) messageByKeyword: 'NOW_PLAYS') , ' ', (currentlyPlayingMonster displayName)); cr..
	(self allLivingMonsters) do: [  :x | x onNewTurn. ] 