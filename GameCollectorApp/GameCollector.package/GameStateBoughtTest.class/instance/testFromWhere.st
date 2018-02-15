tests
testFromWhere
	| state |
	state := GameStateBought fromWhere: 'JRC'.
	self assert: state place equals: 'JRC'.