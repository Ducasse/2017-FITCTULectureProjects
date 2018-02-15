persistence
at: aKey put: anObject 
	"Set the value at aKey to be anObject.  If key is not found, create a
	new entry for aKey and set is value to anObject.
	AnObject shall persist in the Pharo image"
	
	self storage at: aKey put: anObject