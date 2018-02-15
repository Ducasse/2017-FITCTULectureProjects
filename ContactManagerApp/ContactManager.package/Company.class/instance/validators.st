validation
validators
	| d |
	d := OrderedCollection new.
	d addLast: #(#cname 'RequiredValidator' 'Company Name').
	d addLast: #(#country 'RequiredOidValidator' 'Country').
	d addLast: #(#manager 'RequiredOidValidator' 'Manager').
	^ d