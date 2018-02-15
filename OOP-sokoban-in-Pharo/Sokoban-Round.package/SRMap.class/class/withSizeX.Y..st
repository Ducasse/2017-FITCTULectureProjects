instance creation
withSizeX: aSizeX Y: aSizeY
	| s |
	s := SRMap new.
	s sizeX: aSizeX Y: aSizeY.
	^ s