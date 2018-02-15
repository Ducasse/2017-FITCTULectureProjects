initialization
initializeWidgets
	detailModel := self instantiate: SearchScreen.
	listModel := self newList.
	listModel displayBlock: [ :list | list listName ].
	listModel
		beSingleSelection;
		autoDeselect;
		dragEnabled: true;
		dropEnabled: true.
	searchModel := self newTextInput.
	searchModel ghostText: 'Nový seznam'.
	self refreshView.