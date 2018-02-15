instance creation
findPortal: anArray
	"Answers an index of the BlockHolder that holds MiTeleportCenterBlock. If no one is found, answers 0."

	^ anArray findFirst: [ :elem | elem block class = MiTeleportCenterBlock ]