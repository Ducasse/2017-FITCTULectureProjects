validation
validate: anEntity onGroup: aGroup
	"set up group to display in proper place"

	group := aGroup.
	^ self validate: anEntity