drawing
drawMine: aCanvas
	| r |
	r := 5.
	
	1 to: r do: [ :i |
		aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				circleAt: 10@10 radius: i );
			width: 1; 
			draw.	
	].
	
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: 10@1 to: 10@19"10@1" );
			width: 2; 
			draw.
			
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				line: 1@10 to: 19@10"5@10" );
			width: 2; 
			draw.
			
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				circleAt: 5@5 radius: 0.5 );
			width: 1; 
			draw.	
			
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				circleAt: 15@5 radius: 0.5 );
			width: 1; 
			draw.	
			
	aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				circleAt: 15@15 radius: 0.5 );
			width: 1; 
			draw.	
			
		aCanvas stroke
			paint: (Color black);
			path: (aCanvas shape 
				circleAt: 5@15 radius: 0.5 );
			width: 1; 
			draw.
			
		aCanvas stroke
			paint: (Color white);
			path: (aCanvas shape 
				polygon: {7@7. 9@7. 9@9. 7@9 } );
			width: 1; 
			draw.