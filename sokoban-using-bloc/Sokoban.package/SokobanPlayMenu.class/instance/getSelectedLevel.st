accessing
getSelectedLevel
"Gets selected level from the list. In case nothing is selected, error message will be displayed"
	| levelPath |
	levelPath := listLevels selectedItem.
	levelPath
		ifNil: [ self owner
				makeDialog: 'You have not selected a level from the list.'
				modal: true
				onAction: [  ] ].
	^ levelPath