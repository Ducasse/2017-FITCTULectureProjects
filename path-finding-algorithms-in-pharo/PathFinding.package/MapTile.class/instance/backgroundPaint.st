accessing
backgroundPaint
	| image |
	image := ImageReadWriter formFromFileNamed: imageFileName.
	selected ifTrue: [ image := image darker ]
				ifFalse: [  
					onPath ifTrue: [ image := ImageReadWriter formFromFileNamed: 'maptileselect.jpg' ] 
							 ifFalse: [ found ifTrue: [ image := image asGrayScale ] ]
							].
	
	^ image yourself magnifyBy: (self width / image width)