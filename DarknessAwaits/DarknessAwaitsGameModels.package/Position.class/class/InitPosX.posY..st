as yet unclassified
InitPosX: newPosX posY: newPosY
	| instance |
	instance := self new.
	
	instance posX: newPosX; posY: newPosY.
	
	^ instance.