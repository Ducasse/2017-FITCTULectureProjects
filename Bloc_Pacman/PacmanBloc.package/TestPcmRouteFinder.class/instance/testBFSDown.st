tests
testBFSDown
	| finder |
	finder := PcmBasicRouteFinder new.
	finder map: map.
	finder endNode: 47.
	finder startNode: 17.
	self assert: (finder runFor: PcmBlinky new) class equals: PcmDirDown