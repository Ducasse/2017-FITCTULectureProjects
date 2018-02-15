rendering
renderContentOn: html
	html label: 'Borrowed'.
	html break.
	html label: 'from whom I borrowed this game: '.
	html break.
	html text: person.
	html break.
	html label: 'last change date: '.
	html break.
	html text: (time dayOfMonth asString),'.',time monthName,'.',time year asString