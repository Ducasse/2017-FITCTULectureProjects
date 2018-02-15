cleanup
cleanup
	"Performs cleanup when application is exiting"

	ResourceManager destroyInstance.
	BlUniverse reset.
	Smalltalk garbageCollect