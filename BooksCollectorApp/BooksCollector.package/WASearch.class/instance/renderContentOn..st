rendering
renderContentOn: html
	html
		form: [ html text: 'Search for: '.
			html textInput
				callback: [ :query | searchRequest requestValue: query ];
				value: searchRequest requestValue.
			html break.
			html text: 'search in:'.
			html break.
			self renderCheckboxesOn: html.
			html break.
			self renderRadiobuttonsOn: html.
			html break.
			html submitButton
				callback: [ self updateView ];
				with: 'Search' ].
			html render: searchResults