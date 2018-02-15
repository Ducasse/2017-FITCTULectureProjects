actions
gameOver
	| popupMessage |
	popupMessage := MSPopUpMessage withMessage: 'Game over! :('.
	container addChild: popupMessage.