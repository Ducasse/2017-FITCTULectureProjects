tests
testLog
	| newLog gameLog |
	newLog := OrderedCollection new.
	newLog add: 'Pharo .....!';
			 add: 'Second log.';
			 add: 'Last but not least log.'.
			
	gameLog := GameLog new.
	gameLog announcer.
	gameLog addLog: 'Whatever.'.
	gameLog log: newLog.
	
	self assert: (gameLog log) = newLog.
	
	