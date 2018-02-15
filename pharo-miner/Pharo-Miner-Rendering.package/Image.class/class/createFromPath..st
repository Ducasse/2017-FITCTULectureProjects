creation
createFromPath: pathString
	| file |
	file := Form fromFileNamed: pathString.
	^ self new blElement:(
				BlElement new
					size: file extent;
					background: (BlBackground image: file));
			yourself