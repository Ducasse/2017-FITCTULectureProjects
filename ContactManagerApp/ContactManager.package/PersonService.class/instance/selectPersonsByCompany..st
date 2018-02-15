selection
selectPersonsByCompany: aCompany
	| oid |
	oid := aCompany id.
	^ Person selectMany: {('company' -> oid)}