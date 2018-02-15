drawing
keyDownEvent: anBlKeyDownEvent
	"miner move keys"
	| key |
	key := anBlKeyDownEvent key.
	(key = Key e) | (key name = 'KP_SPACE')
		ifTrue:[model performInteract.].
	(key = Key arrowRight) | (key = Key d)
		ifTrue: [ self delegateMove: MiDirectionRight new ].
	(key = Key arrowDown ) | (key = Key s)
		ifTrue: [ self delegateMove: MiDirectionDown new ].
	(key = Key arrowLeft ) | (key = Key a)
		ifTrue: [ self delegateMove:MiDirectionLeft new ].
	(key = Key arrowUp ) | (key = Key w)
		ifTrue: [ self delegateMove: MiDirectionUp new ]