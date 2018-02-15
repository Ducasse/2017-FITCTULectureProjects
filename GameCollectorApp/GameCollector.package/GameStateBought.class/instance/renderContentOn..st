states
renderContentOn: html
	html label: 'Bought'.
	html break.
	html label: 'where I bought this game: '.
	html break.
	html text: place.
	html break.
	html label: 'last change date: '.
	html break.
	html text: (time dayOfMonth asString),'.',time monthName,'.',time year asString