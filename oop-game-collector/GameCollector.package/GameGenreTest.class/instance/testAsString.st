tests
testAsString
	|genre1 genre2 genre3 genre4|
	genre1 := GameGenre new.
	genre2 := GameGenre new.
	genre3 := GameGenre new.
	genre4 := GameGenre new.
	genre1 setAction.
	genre2 setStrategy.
	genre3 setLogic.
	genre4 setSimulation.
	^ self assert: (genre1 asString = 'Action') & (genre2 asString = 'Strategy') & (genre3 asString = 'Logic') & (genre4 asString = 'Simulation').