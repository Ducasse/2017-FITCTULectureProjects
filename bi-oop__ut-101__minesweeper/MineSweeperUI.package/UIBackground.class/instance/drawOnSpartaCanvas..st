drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: UIColors bgColor;
		path: self boundsInLocal;
		draw.
	
	UIShade from: 0@0 to: self extent on: aCanvas. 
	UIShade Invertedfrom: 9@9 to: (self extent x-9)@44 on: aCanvas.
	UIShade Invertedfrom: 9@53 to: (self extent x-9)@(self extent y-9) on: aCanvas.