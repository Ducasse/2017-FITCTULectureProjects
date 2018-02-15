tests
testPrintOn
	|genre1 genre2 genre3 genre4|
	genre1 := GameGenre new.
	genre2 := GameGenre new.
	genre3 := GameGenre new.
	genre4 := GameGenre new.
	genre1 setAdventure.
	genre2 setSport.
	genre3 setLogic.
	genre4 setSimulation.
	^ self assert: (genre1 printString  = 'Adventure') & (genre2 printString = 'Sport') & (genre3 printString = 'Logic') & (genre4 printString = 'Simulation').