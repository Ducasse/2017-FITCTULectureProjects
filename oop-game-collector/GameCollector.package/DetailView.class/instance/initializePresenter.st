initialization
initializePresenter
	titleText
		acceptBlock: [ :text | 
			game value title: text.
			self announceChange ].
	descriptionText
		acceptBlock: [ :text | 
			game value description: text asString.
			self announceChange ].
	yearText
		acceptBlock: [ :text | 
			game value releaseYear: text.
			self announceChange ].
	genreSelect
		whenSelectionIndexChanged: [ :index :a :b | 
			game value genre genre: index.
			self announceChange ]