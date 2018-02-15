rendering
renderPartnerFieldOn: html
	WARenderUtility
		renderPartnerBoxFieldOn: html
		withValue: tmpEntity isPartner
		withLabel: 'Partner'
		withRequired: false
		withCallback: [ :value | tmpEntity isPartner: value ]