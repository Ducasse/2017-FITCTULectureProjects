instance creation
open
	| eventListener |
	textstrip relocate: 0 @ (self mapMaxYSize * 48).
	menu relocate: (self mapMaxXSize * 48) @ 0.
	space root addChild: SGameWindowBackgroundElement new.
	space root addChild: textstrip.
	space root addChild: menu.
	
	eventListener := SMMenuListener new round: roundInstance.
	space root addEventHandler: eventListener .
	
	space show