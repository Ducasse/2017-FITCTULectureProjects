initialization
drawCommonOn: aCanvas
	| form |

	form := (Form fromFileNamed: 'pharo-local/iceberg/rathojak/DarknessAwaits/pic/tile.png') scaledToSize:42@42.
	
	
	aCanvas fill
		paint: (aCanvas bitmap fromForm: form);
		path: (0@0 extent: 42@42);
		draw.