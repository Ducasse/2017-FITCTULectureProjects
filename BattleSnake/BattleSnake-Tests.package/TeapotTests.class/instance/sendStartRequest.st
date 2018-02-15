tests
sendStartRequest
	| jsonData |
	jsonData := {(#width -> 20).
	(#height -> 20).
	(#game_id -> 'b1dadee8-a112-4e0e-afa2-2845cd1f21aa')} asDictionary.
	^ self sendRequest: jsonData on: 'http://localhost:8009/start'