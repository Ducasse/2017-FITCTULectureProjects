rendering
renderContentOn: html
	html label: 'Lended'.
	html break.
	html label: 'to who I lend this game: '.
	html break.
	html text: person.
	html break.
	html label: 'last change date: '.
	html break.
	html text: (time dayOfMonth asString),'.',time monthName,'.',time year asString