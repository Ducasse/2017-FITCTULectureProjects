initialization
initialize
	| i levels |
	super initialize.
	
	selectedLevel := 1.
	actLevelNumber := 1.
	levels := MapLoader new listLevels.
	
	(levels isMemberOf: Array)
		ifTrue: [ levelsArray := levels ]
		ifFalse: [ levelsArray := Array with: '-' ].
	
	i := 1.
	buttons := Array new: 13.
	
	buttons at: i put: (SMButtonModel new text: '<'; id: 1; 		location: 0@100;   size: 75@50).	i := i + 1.
	buttons at: i put: (SMButtonModel new text: '←'; id: 6; 		location: 100@500; size: 50@50).  i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Restart'; id: 0; location: 75@50).						i := i + 1.
	buttons at: i put: (SMButtonModel new text: (levelsArray at: 1) ; id: 2; location: 75@100).		i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Undo'; id: 4; 	location: 75@550).						i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Boxes 0/', boxCnt asString; location: 75@250 ).		i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Moves 0'; 			location: 75@300).						i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Box moves 0'; 	location: 75@350).						i := i + 1.
	buttons at: i put: (SMButtonModel new text: '↑'; id: 5; 		location: 150@450; size: 50@50).	i := i + 1.
	buttons at: i put: (SMButtonModel new text: '↓'; id: 7; 		location: 150@500; size: 50@50).	i := i + 1.
	buttons at: i put: (SMButtonModel new text: '>'; id: 3; 		location: 275@100; size: 75@50 ).	i := i + 1.
	buttons at: i put: (SMButtonModel new text: '→'; id: 8; 		location: 200@500; size: 50@50).	i := i + 1.
	buttons at: i put: (SMButtonModel new text: 'Select level'; id: 9; 	location: 75@150).
	