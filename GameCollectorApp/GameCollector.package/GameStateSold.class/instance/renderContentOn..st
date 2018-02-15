rendering
renderContentOn: html
	html label: 'Sold'.
	html break.
	html label: 'to whom I sold this game: '.
	html break.
	html text: person.
	html break.
	html label: 'sold for: '.
	html break.
	html text: price.
	html break.
	html label: 'last change date: '.
	html break.
	html text: (time dayOfMonth asString),'.',time monthName,'.',time year asString