serialization
gameFromJson: aJson
	| game j |
	
	game := Game new.
	j := (NeoJSONReader fromString: aJson) at: 1.
	
	[ game name: (j at: #name) ] on: Exception do: [ 1 ].
	[ game summary: (j at: #summary) ] on: Exception do: [ 1 ].
	[ game rating: (j at: #popularity) ] on: Exception do: [ 1 ].
	[ game release: (j at: #first_release_date) ] on: Exception do: [ 1 ].
	[ game igdbid: (j at: #id) ] on: Exception do: [ 1 ].
	[ game iconUrl: (j at: #cover) ] on: Exception do: [ 1 ].

	game release isNil ifFalse:
		[ game release: (Date fromSeconds: game release / 1000) + 70 years ].
	game iconUrl isNil ifFalse:
		[ game iconUrl: (game iconUrl at: #url) ].
	
	^ game
	