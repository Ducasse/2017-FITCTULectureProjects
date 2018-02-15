drawing
drawHead: aCanvas
	
	1 to: (((self extent x)/2)-6) do: [ :i |
		aCanvas stroke
			paint: (Color yellow );
			path: (aCanvas shape 
				circleAt: ((self extent x)/2)@((self extent y)/2) radius: i );
			width: 1; 
			draw.	
	].
	
	aCanvas stroke
			paint: (Color black );
			path: (aCanvas shape 
				circleAt: ((self extent x)/2)@((self extent y)/2) radius: (((self extent x)/2)-5) );
			width: 1; 
			draw.	