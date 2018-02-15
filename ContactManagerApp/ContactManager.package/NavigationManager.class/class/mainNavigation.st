initialization
mainNavigation
	^ {(NavigationPart createWithTitle: 'Contacts' withLink: WACompanyList).
	(NavigationPart createWithTitle: 'Persons' withLink: WAPersonList).
	(NavigationPart createWithTitle: 'Prospects' withLink: WAProspectList)}