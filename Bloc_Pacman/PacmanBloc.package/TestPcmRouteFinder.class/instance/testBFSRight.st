tests
testBFSRight
	| finder |
	finder := PcmBasicRouteFinder new.
	finder map: map.
	finder endNode: 28.
	finder startNode: 17.
	self assert: (finder runFor: PcmBlinky new) class equals: PcmDirRight