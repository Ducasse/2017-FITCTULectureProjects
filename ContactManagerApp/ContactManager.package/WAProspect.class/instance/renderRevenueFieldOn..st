rendering
renderRevenueFieldOn: html
	WARenderUtility
		renderNumberInputFieldOn: html
		withValue: tmpEntity revenue
		withLabel: 'Revenue'
		withRequired: true
		withPlaceholder: 'Revenue'
		withCallback: [ :value | tmpEntity revenue: value ]