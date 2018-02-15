class initialization
currentGame
	"Singleton of Game class"
	UniqueInstance
		ifNil: [ resourcesPath := self getResourcesPath.
			UniqueInstance := super new initialize.
			UniqueInstance initialize ].
	^ UniqueInstance