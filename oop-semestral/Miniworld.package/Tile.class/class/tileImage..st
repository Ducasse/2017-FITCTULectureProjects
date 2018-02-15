instance creation
tileImage: anIndex
	| source hIndex vIndex lineCount |
	source := IconProvider current tilesetIcon.
	lineCount := source width / 32.
	vIndex := anIndex // lineCount.
	hIndex := anIndex \\ lineCount.
	^ source copy: ((32 * hIndex) @ (32 * vIndex) extent: 32 @ 32)