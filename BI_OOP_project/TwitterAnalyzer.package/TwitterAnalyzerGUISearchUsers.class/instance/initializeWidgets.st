initialization
initializeWidgets
	self instantiateModels: #(
			textFieldUser 		TextInputFieldModel
			labelUser				LabelModel
			buttonSearch			ButtonModel
			textFieldUserInfo	TextModel
			textFieldTweets		TextModel
			radioButtonDetailedView	RadioButtonModel
			labelCount					LabelModel
		   labelRetrievedTweetsCnt	LabelModel
			dropListCnt					DropListModel
			goToTweetSearchButton		ButtonModel
			analysisWindow				TextModel
		).
		textFieldUser autoAccept: true.
		textFieldUserInfo disable.
		textFieldTweets disable.
		labelUser label: 'User screen name'.
		labelCount label: 'Count:'.
		buttonSearch label: 'Search'.
		radioButtonDetailedView label: 'Detailed timeline view'; canDeselectByClick: true.
		dropListCnt addItemLabeled: (10 asString) do: [];
						addItemLabeled: (15 asString) do: [];
						addItemLabeled: (20 asString) do: [];
						addItemLabeled: (50 asString) do: [];
						addItemLabeled: (100 asString) do: [].
		goToTweetSearchButton label: 'Search Tweets'.
		analysisWindow autoAccept: true; disable.