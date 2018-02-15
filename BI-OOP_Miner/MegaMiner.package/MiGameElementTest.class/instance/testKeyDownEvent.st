tests-drawing
testKeyDownEvent
	| view game lastPosition |
	
	view := MiGameElement createView: MiGame new.	
	game := view model.
	lastPosition :=  game miner position.
	view keyDownEvent: (BlKeyDownEvent new key: Key arrowRight ).
	self assert: (lastPosition = game miner position) not.


	view := MiGameElement createView: MiGame new.	
	game := view model.
	lastPosition := game miner position.
	view keyDownEvent: (BlKeyDownEvent new key: Key arrowDown  ).
	self assert: (lastPosition = game miner position) not.