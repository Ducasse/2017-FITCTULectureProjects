drawing
drawGlassesLegs: aCanvas
	
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: 5@13 to: 8@10 );
			width: 1; 
			draw.
			
		aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: ((self extent x)-5)@13 to: 18@10 );
			width: 1; 
			draw.