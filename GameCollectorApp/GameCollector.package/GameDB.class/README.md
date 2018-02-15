I am a Singleton with connection to database.
Send me message for data

Initialization
	db := GameDB uniqueInstance.
	
Add new game:
	db add: game.
	
Find game with known name:
	db findName: 'Skyrim'
	
Remove game:
	db remove: aGame.
