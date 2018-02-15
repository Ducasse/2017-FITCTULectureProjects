tests
testMineCount
	| gp |

	gp := MSEasyGameProperties new.
	gp mineCount: 66.
	
	self assert: gp mineCount equals: 66.