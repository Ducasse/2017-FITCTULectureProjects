utility
getPathNamesOfLevels
	"Get paths of all files inside levels directory and its subdirectories."

	^ (self resourceDirectory / 'levels') allFiles
		collect: [ :each | each asFileReference pathString ]