returning
returnCountersAndCheckWin
	| a |
	a := Array new: 3.
	a at: 1 put: sokoMoveCnt.
	a at: 2 put: boxMoveCnt.
	a at: 3 put: boxOnTargetCnt.
	menuInstance changeScore: a.

	"show win text"
	boxOnTargetCnt = boxCnt
		ifTrue: [ win := true ].
	win = true
		ifTrue: [ graphicInstance setTextstrip: 'YOU WIN' ]
		ifFalse: [ graphicInstance clearTextstrip ].
	^ a