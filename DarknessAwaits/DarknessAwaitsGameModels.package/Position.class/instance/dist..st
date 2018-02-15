point functions
dist: aPoint 
	"Answer the distance between aPoint and the receiver."
	| dx dy |
	dx := aPoint posX - posX.
	dy := aPoint posY - posY.
	^ (dx * dx + (dy * dy)) sqrt