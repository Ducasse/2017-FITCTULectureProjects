event handling
handleKeyUpEvent: anEvent
	levelElem level goalCount = 0
		ifTrue: [ ^ self].
	(anEvent key = (Key character: $W) or: [ anEvent key = (Key character: $w) ])
		ifTrue: [ levelElem level move: Up new ].
	(anEvent key = (Key character: $D) or: [ anEvent key = (Key character: $d) ])
		ifTrue: [ levelElem level move: Right new ].
	(anEvent key = (Key character: $S) or: [ anEvent key = (Key character: $s) ])
		ifTrue: [ levelElem level move: Down new ].
	(anEvent key = (Key character: $A) or: [ anEvent key = (Key character: $a) ])
		ifTrue: [ levelElem level move: Left new ].
	(anEvent key = (Key character: $E) or: [ anEvent key = (Key character: $e) ])
		ifTrue: [ levelElem level undoMove ].
	(anEvent key = (Key character: $R) or: [ anEvent key = (Key character: $r) ])
		ifTrue: [ levelElem level redoMove ]