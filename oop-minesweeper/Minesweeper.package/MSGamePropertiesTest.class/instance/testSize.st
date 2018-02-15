tests
testSize
	| gp |

	gp := MSEasyGameProperties new.
	gp size: 23@52.
	
	self assert: gp size equals: 23@52.