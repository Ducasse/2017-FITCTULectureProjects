instance creation
base: aPosition
	"Creates a portal from base to base itself."
	^ (MiPortal basicNew base: aPosition) target: aPosition. 