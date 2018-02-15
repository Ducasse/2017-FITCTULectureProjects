accessing
getResFile: aString
	"Returns file on given location relative to the resource directory."

	^ self resourceDirectory / aString