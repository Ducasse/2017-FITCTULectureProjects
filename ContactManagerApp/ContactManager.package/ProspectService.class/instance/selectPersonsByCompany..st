selection
selectPersonsByCompany: aCompany
	| oid |
	oid := aCompany id.
	^ Prospect selectMany: {('company' -> oid)}