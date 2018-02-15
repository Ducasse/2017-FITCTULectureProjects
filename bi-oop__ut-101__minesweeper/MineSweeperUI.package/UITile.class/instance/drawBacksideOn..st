drawing
drawBacksideOn: aCanvas
		UIShade from: 0@0 to: self extent on: aCanvas. 
	
	self isFlagged  
		ifTrue: [ self drawFlag: aCanvas].