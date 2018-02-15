do/undo
undo
	"undo move"

	| move |
	"load move from stack"
	move := stackOfMoves pop.

	"check if undo is possible"
	move isNil
		ifTrue: [ graphicInstance setTextstrip: 'No moves left to undo!'.
			^ nil ].

	"check if move only player or player with box"
	move withBox
		ifTrue: [ "undo with box" self undoWithBoxMoveX: move directionX Y: move directionY ]
		ifFalse: [ "undo only player" self undoMoveX: move directionX Y: move directionY ].
	^ self returnCountersAndCheckWin