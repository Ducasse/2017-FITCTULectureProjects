drawing
drawOnSpartaCanvas: aCanvas
	
| objshape |

aCanvas fill
		paint: self backgroundColor;
		path: self boundsInLocal;
		draw.

objshape := aCanvas shape 
   roundedRectangle: self boundsInLocal
   radii: (BlCornerRadii radius: self cornerRadius ).

aCanvas clip 
   by: objshape
   during: [ 
	   aCanvas fill
	      paint: self boxColor;
	      path: self boundsInLocal;
	      draw. ].