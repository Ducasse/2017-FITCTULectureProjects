rendering
renderCountryFieldOn: html
	| countries |
	countries := self countryService selectAll.
	WARenderUtility
		renderChoices: countries
		on: html
		withSelectedValue: tmpEntity country
		withLabel: 'Country'
		withRequired: true
		withCallback: [ :value | tmpEntity country: value ]