instance creation
onBindHolder: anElementHolder at: aPosition
	"Update holder's model"
	anElementHolder class: (log at: aPosition)