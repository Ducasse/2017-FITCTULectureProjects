changing state
changeTo: aKeyState
	aKeyState isDown ifTrue: [ ^self ] ifFalse: [ ^aKeyState ]