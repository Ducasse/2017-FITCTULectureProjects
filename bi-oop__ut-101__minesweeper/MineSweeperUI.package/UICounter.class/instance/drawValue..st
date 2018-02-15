drawing
drawValue: aCanvas
	value := value min: 999.	"we only have three digits"
		
	UINumberSegment new "1s"
		position: 32 @ 2;
		drawN: value % 10 canvas: aCanvas.
				
	UINumberSegment new "10s"
		position: 17 @ 2;
		drawN: ((value % 100) / 10) asInteger canvas: aCanvas.

	UINumberSegment new "100s"
		position: 3 @ 2;
		drawN: (value / 100) asInteger canvas: aCanvas