tests
testGetResFile
	self assert: (ResourceManager instance getResFile: 'levels/original/1.txt') exists