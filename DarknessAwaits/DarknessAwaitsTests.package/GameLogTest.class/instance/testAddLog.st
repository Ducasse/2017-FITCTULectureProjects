adding
testAddLog
	| gameLog |
	
	gameLog := GameLog new.
	gameLog announcer.
	gameLog addLog: 'Pharo .....'.
	self assert: (gameLog log first) = 'Pharo .....'