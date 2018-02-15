actions
updateView
	searchResults
		updateView:
			(WABookList
				withBooks:
					(radioIsExact
						ifTrue: [ db search: (SearchExact withSearchRequest: searchRequest) ]
						ifFalse: [ db search: (SearchPattern withSearchRequest: searchRequest) ])
				withController: controller
				withRoot: root)