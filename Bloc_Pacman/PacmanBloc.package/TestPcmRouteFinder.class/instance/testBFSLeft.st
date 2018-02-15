tests
testBFSLeft
	| finder |
	finder := PcmBasicRouteFinder new.
	finder map: map.
	finder endNode: 17.
	finder startNode: 28.
	self assert: (finder runFor: PcmBlinky new) class equals: PcmDirLeft