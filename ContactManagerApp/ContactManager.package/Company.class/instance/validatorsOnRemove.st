validation
validatorsOnRemove
	| d |
	d := OrderedCollection new.
	d addLast: #('RemoveCompanyValidator' 'Company contains dependencies in Persons and Prospects').
	^ d