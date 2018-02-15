parsing
createFromJson: aJsonString
	| params |
	params := NeoJSONReader fromString: aJsonString.
	^ self new
		gameId: (params at: 'game_id');
		height: (params at: 'height');
		width: (params at: 'width')