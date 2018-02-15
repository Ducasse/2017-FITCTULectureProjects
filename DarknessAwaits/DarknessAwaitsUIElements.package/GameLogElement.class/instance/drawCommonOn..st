drawing
drawCommonOn: aCanvas
| radius |
	
	radius := 4.
	
	aCanvas fill
		paint: self backgroundColor;
		path: ( aCanvas shape roundedRectangle: (self boundsInLocal) radii: (BlCornerRadii radius: radius ));
		draw