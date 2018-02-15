rendering
renderMandaysFieldOn: html
	WARenderUtility
		renderNumberInputFieldOn: html
		withValue: tmpEntity mandays
		withLabel: 'Mandays'
		withRequired: true
		withPlaceholder: 'Mandays'
		withCallback: [ :value | tmpEntity mandays: value ]