drawing
drawEyeSad: aCanvas at: aPt
			aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: ((aPt x)-2)@((aPt y)-2) to: ((aPt x)+2)@((aPt y)+2) );
			width: 1; 
			draw.
			
			aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: ((aPt x)-2)@((aPt y)+2) to: ((aPt x)+2)@((aPt y)-2) );
			width: 1; 
			draw.