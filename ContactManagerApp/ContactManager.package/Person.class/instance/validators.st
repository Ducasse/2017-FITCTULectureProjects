validation
validators
	| d |
	d := OrderedCollection new.
	d addLast: #(#firstName 'RequiredValidator' 'First Name').
	d addLast: #(#lastName 'RequiredValidator' 'Last Name').
	d addLast: #(#company 'RequiredOidValidator' 'Company').
	^ d