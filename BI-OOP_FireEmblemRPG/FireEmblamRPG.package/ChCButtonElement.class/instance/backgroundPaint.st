visual properties
backgroundPaint 
	"^ Color lightGray"
	"^ Color darkGray"
	^selState ifTrue: [ Color r: 0.05 g: 0.60 b: 0.05 ] ifFalse: [ Color darkGray ]
