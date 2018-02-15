as yet unclassified
collidesWith: aPcmPacman
	"detect my collision with pacman based on squared distance"

	^ (aPcmPacman x - self x) abs + (aPcmPacman y - self y) abs < 23