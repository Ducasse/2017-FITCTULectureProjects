instance creation
blocks: aMatrix
	"Creates a new instance of the Map with given Matrix of BlockHolders and Portal."

	^ (self basicNew blocks: aMatrix)
		portal: (MiPortal base: (self findPortal: (aMatrix atRow: 1)) @ 1)