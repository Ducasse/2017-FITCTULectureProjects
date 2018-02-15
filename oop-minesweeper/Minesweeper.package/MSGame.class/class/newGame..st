initialize
newGame: aDifficulty
	| gp grid |

	gp := MSMediumGameProperties new.
	aDifficulty = 'easy'
		ifTrue: [ gp := (MSEasyGameProperties new) ].
	aDifficulty = 'hard'
		ifTrue: [ gp := (MSHardGameProperties new) ].
	aDifficulty = 'extreme'
		ifTrue: [ gp := (MSExtremeGameProperties  new) ].
	
	grid := MSGrid withGameProperties: gp.
	grid setupGrid.
	
	^ self new grid: grid.