rendering
renderNameFieldOn: html
	WARenderUtility
		renderInputFieldOn: html
		withValue: tmpEntity cname
		withLabel: 'Name'
		withRequired: true
		withPlaceholder: 'Name'
		withCallback: [ :value | tmpEntity cname: value ]