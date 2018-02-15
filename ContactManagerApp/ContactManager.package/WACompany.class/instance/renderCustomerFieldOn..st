rendering
renderCustomerFieldOn: html
	WARenderUtility
		renderCheckBoxFieldOn: html
		withValue: tmpEntity isCustomer
		withLabel: 'Customer'
		withRequired: false
		withCallback: [ :value | tmpEntity isCustomer: value ]