tests
sendMoveRequest
	| food snake moveData |
	food := #(1 1).
	snake := {(#taunt -> 'aa').
	(#name -> 'oother').
	(#id -> '2c4d4d70-8cca-48e0-ac9d-03ecafca0c98').
	(#health_points -> 50).
	(#coords -> #(0.0))} asDictionary.
	
	moveData := {(#you -> '2c4d4d70-8cca-48e0-ac9d-03ecafca0c98').
	(#width -> 20).
	(#turn -> 0).
	(#snakes -> {snake}).
	(#height -> 20).
	(#game_id -> 'b1dadee8-a112-4e0e-afa2-2845cd1f21aa').
	(#food -> {food}).
	(#dead_snakes -> {})} asDictionary.
	
	^ self sendRequest: moveData on: 'http://localhost:8009/move'