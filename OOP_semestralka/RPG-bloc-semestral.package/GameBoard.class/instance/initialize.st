initialization
initialize
	|textDatabase monsterDbs l resourcesPathDir|
		
	super initialize .
	self size: 800@600.
	
	l := InputEventsListener new.
	l gameBoard: self.
	self addEventHandler: l.
	
	resourcesPathDir := './RPG-Semestral'.
	
	textureDatabase := TextureDatabase singleton.
	textureDatabase resourcesPathDir: resourcesPathDir.
	
	"Always load text database first"	
	textDatabase := TextDatabase singleton.
	textDatabase loadAll: resourcesPathDir.
	
	monsterDbs := MonsterDatabase new.
	
	variables := Variables create: textDatabase monsterDatabase: monsterDbs.
	monsterDbs loadAll: variables.
	
	sizeX:= 30.
	sizeY:= 20.
	
	"super initialize.
	self size: 800@600.
	"
	mapFields := Array new: sizeX.
	1 to: sizeX do: [ :x|
	mapFields at: x put: (Array new: sizeY); yourself.
	].
	
	upperLeftCorner := 0@0.
	1 to: sizeX do: [ :x|
	1 to: sizeY do: [ :y|
		(mapFields at: x) at: y put: (MapField new); yourself.
		((mapFields at: x) at: y) positionInArray: ((upperLeftCorner x) + x - 1)@((upperLeftCorner y) + y - 1).
		((mapFields at: x) at: y) variables: (self variables).
	].
	].	
	
	"create players"
	
	player1 := Player new.
	player1 gameBoard: self.
	player1 setColor: Color red.
	player2 := Player new.
	player2 gameBoard: self.
	player2 setColor: Color blue.
	
	"start game"
	self startGame.