tests
testLoading
	| level |
	level := Level loadXsbFromFile: (ResourceManager instance getResFile: 'levels/original/1.txt').
	self assert: level width equals: 19.
	self assert: level height equals: 11.
	self assert: level goalCount equals: 6.
	self assert: level player levelPos point equals: 8 @ 11.
	level := Level
		loadXsb:
			'
#####
#.$@#
#####'.
	self assert: level width equals: 5.
	self assert: level height equals: 3.
	self assert: level goalCount equals: 1.
	self assert: level player levelPos point equals: 1 @ 3