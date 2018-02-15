initialization
initializeWidgets
	self instantiateModels: #(
			textInputText 		TextInputFieldModel
			labelText		 		LabelModel
			buttonSearch			ButtonModel
			textFieldOut			TextModel
			radioButtonMixed	RadioButtonModel
			radioButtonRecent	RadioButtonModel
			radioButtonPopular	RadioButtonModel
			labelTweetType		LabelModel
			labelRetrievedTweetsCnt	LabelModel
			dropListCnt					DropListModel
			labelCount					LabelModel
			labelLatitude				LabelModel
			labelLongitude				LabelModel
			labelRadius					LabelModel
			textInputLatitude			TextInputFieldModel
			textInputLongitude			TextInputFieldModel
			dropDownRadius				DropListModel
			radioButtonIncludeGeoInfo	RadioButtonModel
			analysisOutputWindow 			TextModel
			goToUserSearchButton			ButtonModel
		).
	labelText label: 'Text'.
	buttonSearch label: 'Search'.
	textInputText autoAccept: true.
	textFieldOut autoAccept: true.
	textFieldOut disable.
	labelTweetType label: 'Tweet type:'.
	radioButtonRecent label: 'recent'.
	radioButtonMixed label: 'mixed'.
	radioButtonPopular label: 'popular'.
	RadioButtonGroup new 
		addRadioButton: radioButtonMixed; 
		default: radioButtonMixed; 
		addRadioButton: radioButtonPopular; 
		addRadioButton: radioButtonRecent.
	dropListCnt addItemLabeled: (10 asString) do: [];
		addItemLabeled: (15 asString) do: [];
		addItemLabeled: (20 asString) do: [];
		addItemLabeled: (50 asString) do: [];
		addItemLabeled: (100 asString) do: [].
	labelCount label: 'Count:'.
	labelLatitude label: 'Latitude:'.
	labelLongitude label: 'Longtitude:'.
	labelRadius label: 'Radius (miles)'.
dropDownRadius addItemLabeled: (1 asString) do: [];
		addItemLabeled: (2 asString) do: [];
		addItemLabeled: (3 asString) do: [];
		addItemLabeled: (5 asString) do: [];
		addItemLabeled: (10 asString) do: [];
		addItemLabeled: (50 asString) do: [].
textInputLatitude text: '50.104903'; autoAccept: true.
textInputLongitude text: '14.389670'; autoAccept: true.
radioButtonIncludeGeoInfo label: 'Include Geo Info'; canDeselectByClick: true.
analysisOutputWindow autoAccept: true; disable.
goToUserSearchButton label: 'Search By User'.