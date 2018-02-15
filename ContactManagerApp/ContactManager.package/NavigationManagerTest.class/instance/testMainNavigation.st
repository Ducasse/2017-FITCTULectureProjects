tests
testMainNavigation
	| navigation tmp |
	navigation := NavigationManager mainNavigation.
	tmp := navigation at: 1.
	self assert: tmp title equals: 'Contacts'.
	self assert: tmp link equals: WACompanyList.
	tmp := navigation at: 2.
	self assert: tmp title equals: 'Persons'.
	self assert: tmp link equals: WAPersonList.
	tmp := navigation at: 3.
	self assert: tmp title equals: 'Prospects'.
	self assert: tmp link equals: WAProspectList