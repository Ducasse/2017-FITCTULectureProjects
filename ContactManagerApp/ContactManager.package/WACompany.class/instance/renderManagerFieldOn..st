rendering
renderManagerFieldOn: html
	| manager |
	manager := self managerService selectAll.
	WARenderUtility
		renderChoices: manager
		on: html
		withSelectedValue: tmpEntity manager
		withLabel: 'Manager'
		withRequired: true
		withCallback: [ :value | tmpEntity manager: value ]