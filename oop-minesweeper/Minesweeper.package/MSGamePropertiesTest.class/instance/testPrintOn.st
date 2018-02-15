tests
testPrintOn
	| gp |

	gp := MSEasyGameProperties new.
	gp mineCount: 11.
	gp size: 32@41.
	
	self assert: gp asString equals: 'MSGameProperties: size: (32@41), mineCount: 11'.