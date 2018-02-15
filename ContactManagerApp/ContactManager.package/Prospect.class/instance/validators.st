validation
validators
	| d |
	d := OrderedCollection new.
	d addLast: #(#pname 'RequiredValidator' 'Name').
	d addLast: #(#company 'RequiredOidValidator' 'Company').
	d addLast: #(#probability 'RequiredValidator' 'Probability').
	d addLast: #(#probability 'RangeValidator' 'Probability' 0 100).
	d addLast: #(#revenue 'RequiredValidator' 'Revenue').
	d addLast: #(#revenue 'RangeValidator' 'Revenue' 0 nil).
	d addLast: #(#mandays 'RequiredValidator' 'Mandays').
	d addLast: #(#mandays 'RangeValidator' 'Mandays' 0 nil).
	d addLast: #(#state 'RequiredOidValidator' 'State').
	^ d