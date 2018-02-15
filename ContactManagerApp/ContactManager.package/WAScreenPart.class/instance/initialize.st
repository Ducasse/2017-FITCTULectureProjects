initialization
initialize
	super initialize.
	header := WAScreenHeader new.
	nav := WAScreenNavigation initializeWithScreenPart: self.
	current := WACompanyList initializeWithScreenPart: self