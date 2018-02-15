printing
printDeadTeam
	1 to: 2 do: [ :i | 
		(self isTeamDead: i)
			ifTrue: [ ui printEvent: 'Team ' , i asString , ' is dead!' ] ]