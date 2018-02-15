construction
createWithChar: character
	character = $W
	ifTrue: [ ^ Water new. ].
	character = $S
	ifTrue: [ ^ Sand new. ].
	character = $G
	ifTrue: [ ^ Grass new. ].
	character = $H
	ifTrue: [ ^ Hill new. ].
	character = $M
	ifTrue: [ ^ Rock new. ].
	character = $F
	ifTrue: [ ^ Tree new. ].