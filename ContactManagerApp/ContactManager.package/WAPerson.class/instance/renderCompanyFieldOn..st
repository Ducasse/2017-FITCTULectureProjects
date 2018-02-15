rendering
renderCompanyFieldOn: html
	| companies |
	companies := self companyService selectAll.
	WARenderUtility
		renderDbChoices: companies
		on: html
		withSelectedValue: tmpEntity company
		withLabel: 'Company'
		withRequired: true
		withCallback: [ :value | tmpEntity company: (OID value: value) ]