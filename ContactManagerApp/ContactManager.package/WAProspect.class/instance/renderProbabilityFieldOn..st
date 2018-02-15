rendering
renderProbabilityFieldOn: html
	WARenderUtility
		renderNumberInputFieldOn: html
		withValue: tmpEntity probability
		withLabel: 'Probability, %'
		withRequired: true
		withPlaceholder: 'Probability'
		withCallback: [ :value | tmpEntity probability: value ]