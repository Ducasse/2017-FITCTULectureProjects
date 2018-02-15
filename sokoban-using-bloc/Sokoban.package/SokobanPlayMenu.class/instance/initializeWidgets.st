initialization
initializeWidgets
	buttonPlay := self newButton
		label: 'Play';
		yourself.
	buttonBack := self newButton
		label: 'Back';
		yourself.
	buttonClearScores := self newButton
		label: 'Clear Scores';
		yourself.
	listLevels := self instantiate: ListModel.
	listLevels
		sortingBlock: [ :each1 :each2 | each1 < each2 ];
		items: ResourceManager instance getPathNamesOfLevels;
		whenSelectionChanged: [ :index | self loadHighscores ];
		beSingleSelection.
	listScores := self instantiate: MultiColumnListModel.
	listScores
		items: {{'Name' . 'Steps'}};
		allowToSelect: false;
		displayBlock: [ :x | x ].
	labelLoad := self newLabel
		label: 'Choose a level to play:';
		yourself.
	labelScores := self newLabel
		label: 'Highscores:';
		yourself.
	self focusOrder
		add: listLevels;
		add: buttonPlay;
		add: buttonBack