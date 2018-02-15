drawing
drawEyeHappy: aCanvas at: aPt		
					
			aCanvas stroke
				paint: (Color black );
				path: (aCanvas shape 
					circleAt: aPt radius: 1 );
				width: 1; 
				draw.