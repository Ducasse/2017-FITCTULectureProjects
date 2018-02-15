initialize
loadAll: aCanvas

	(isLoaded)
	ifTrue: [ ^self ].
	
	"create a bitmap and cache it somewhere"
	background := aCanvas bitmap fromFileNamed: (resourcesPathDir, '/img/background.png').