tests
testShowBlocksRelativeTo
|game boardElement testCode|
game := MiGame new.
boardElement := MiBoardElement new.
boardElement model: game.
testCode := [ :miner :ret | self assert: (boardElement showBlocksRelativeTo: miner) equals: ret ].
testCode
	value: 1@1 value: 1@1;
	value: 4@4 value: 4@4;
	value: 5@5 value: 5@4;
	value: 6@5 value: 5@4;
	value: 5@3 value: 4@3;
	value: 1@1 value: 1@1;
	value: 1@2 value: 1@2;
	value: 2@2 value: 2@2;
	value: 2@3 value: 2@3;
	value: 3@3 value: 3@3;
	value: 3@4 value: 3@4;
	value: 4@4 value: 4@4;
	value: 4@5 value: 4@4;
	value: 4@6 value: 4@4;
	value: 4@5 value: 4@3;
	value: 4@4 value: 4@3;
	value: 4@3 value: 4@3;
	value: 5@3 value: 5@3;
	value: 5@4 value: 5@4;
	value: 6@3 value: 5@3;
	value: 7@3 value: 5@3;
"testing of boundaries:"
	value: (game map width @ game map height) value: (MiBlockRowCount @ MiBlockColumnCount);
	value: (1 @ game map height) value: (1 @ MiBlockColumnCount);
	value: (game map width @ 1) value: (MiBlockRowCount @ 1)