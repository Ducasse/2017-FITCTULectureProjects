drawing
drawEyeBoss: aCanvas at: aPt		
	1 to: 2 do: [ :i | 
			aCanvas stroke
				paint: (Color black );
				path: (aCanvas shape 
					circleAt: aPt radius: i );
				width: 1;
				draw.
	].