rendering
renderContentOn: html
	html label: 'Lost'.
	html break.
	html label: 'last change date: '.
	html break.
	html text: (time dayOfMonth asString),'.',time monthName,'.',time year asString