rendering
renderEmailFieldOn: html
	WARenderUtility
		renderEmailInputFieldOn: html
		withValue: tmpEntity email
		withLabel: 'Email'
		withRequired: true
		withPlaceholder: 'your@email.eu'
		withCallback: [ :value | tmpEntity email: value ]