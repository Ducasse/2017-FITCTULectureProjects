visual properties
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: self backgroundPaint;
		path: self boundsInLocal;
		draw.
	
	self drawText: aCanvas .
				