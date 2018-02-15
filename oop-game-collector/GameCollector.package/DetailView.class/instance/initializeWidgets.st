initialization
initializeWidgets
	descriptionText := self newText.
	titleText := self newTextInput.
	titleText ghostText: 'Název'.
	yearText := self newTextInput.
	yearText ghostText: 'Rok vydání'.
	posterImage := self instantiate: GCImage.
	genreSelect := self instantiate: GCDropListModel.
	genreSelect
		items: GameGenre GenreStrings;
		displayBlock: [ :m | m ].
		