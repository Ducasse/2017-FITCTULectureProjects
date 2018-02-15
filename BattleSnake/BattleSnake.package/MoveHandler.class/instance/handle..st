accessing
handle: aMoveRequest
	| map move gameinfo |
	gameinfo := GameInfo fromRequest: aMoveRequest.
	map := Map withX: gameinfo width Y: gameinfo height.
	map update: gameinfo.
	move := self algorithm nextMoveWithMap: map beginning: gameinfo player head.
	^ MoveResponse new
		move: move;
		taunt: 'moving';
		yourself