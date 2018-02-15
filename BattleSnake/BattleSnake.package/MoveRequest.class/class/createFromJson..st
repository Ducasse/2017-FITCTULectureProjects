parsing
createFromJson: aJsonString
	| params |
	params := NeoJSONReader fromString: aJsonString.
	^ self new
		food: (params at: 'food');
		game_id: (params at: 'game_id');
		height: (params at: 'height');
		snakes: (params at: 'snakes');
		dead_snakes: (params at: 'dead_snakes');
		turn: (params at: 'turn');
		width: (params at: 'width');
		you: (params at: 'you')
		