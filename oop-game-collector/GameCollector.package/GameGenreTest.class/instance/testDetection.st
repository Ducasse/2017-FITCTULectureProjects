tests
testDetection
	|genre1 genre2 genre3 genre4|
	genre1 := GameGenre new.
	genre2 := GameGenre new.
	genre3 := GameGenre new.
	genre4 := GameGenre new.
	genre1 setRpg.
	genre2 setSport.
	genre3 setLogic.
	^ self assert: genre1 isRpg & genre2 isSport & genre3 isLogic & genre4 isOther.