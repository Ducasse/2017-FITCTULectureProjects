as yet unclassified
computeCurrentCoordinate: aPcmMap
	| newCoordinate |
	newCoordinate := (y + 16) // 32 * aPcmMap columnsCnt
		+ ((x + 16) // 32) + 1.
	coordinate := newCoordinate
		