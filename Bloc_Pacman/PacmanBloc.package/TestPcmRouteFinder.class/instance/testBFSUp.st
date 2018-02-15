tests
testBFSUp
	| finder |
	finder := PcmBasicRouteFinder new.
	finder map: map.
	finder endNode: 17.
	finder startNode: 47.
	self assert: (finder runFor: PcmBlinky new) class equals: PcmDirUp