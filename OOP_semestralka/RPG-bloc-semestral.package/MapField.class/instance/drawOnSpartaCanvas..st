drawing
drawOnSpartaCanvas: aCanvas
 "aCanvas fill
	 alpha: 0.5;
    path: (self drawPosition extent: (self size));
    paint: Color red;
	 draw."

"Draw monsta"
(self hasMonsta)
	ifTrue: [ (self monsta) drawOn: aCanvas position: (self drawPosition) ].
