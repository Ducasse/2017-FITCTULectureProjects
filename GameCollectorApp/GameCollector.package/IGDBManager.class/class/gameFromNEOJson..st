serialization
gameFromNEOJson: aNeoGame
	| game |
	
	game := Game new.
	
	[ game name: (aNeoGame at: #name) ] on: Exception do: [ 1 ].
	[ game summary: (aNeoGame at: #summary) ] on: Exception do: [ 1 ].
	[ game rating: (aNeoGame at: #total_rating) ] on: Exception do: [ 1 ].
	[ game release: (aNeoGame at: #first_release_date) ] on: Exception do: [ 1 ].
	[ game igdbid: (aNeoGame at: #id) ] on: Exception do: [ 1 ].
	[ game iconUrl: (aNeoGame at: #cover) ] on: Exception do: [ 1 ].

	game release isNil ifFalse:
		[ game release: (Date fromSeconds: game release / 1000) + 70 years ].
	game iconUrl isNil ifFalse:
		[ game iconUrl: (game iconUrl at: #url) ].
	
	^ game
	