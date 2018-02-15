instance creation
blocks: aMatrix portal: aPortal
	"Creates a new instance of the Map with given Matrix of BlockHolders and Portal."

	^ (self basicNew blocks: aMatrix)
		portal: aPortal