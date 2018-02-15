rendering
renderNameFieldOn: html
	WARenderUtility
		renderInputFieldOn: html
		withValue: tmpEntity pname
		withLabel: 'Name'
		withRequired: true
		withPlaceholder: 'Name'
		withCallback: [ :value | tmpEntity pname: value ]