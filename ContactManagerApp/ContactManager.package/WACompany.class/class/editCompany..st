editing
editCompany: aCompany
	| c |
	c := self new
		setCompany: aCompany;
		isNew: false;
		yourself.
	c personList
		companyFilter: aCompany;
		isInner: true.
	c prospectList
		companyFilter: aCompany;
		isInner: true.
	^ c