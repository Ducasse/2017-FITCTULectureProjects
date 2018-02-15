initialization
registerServices
	ServiceLocatorDefault registerWithName: 'CompanyService' service: CompanyService.
	ServiceLocatorDefault registerWithName: 'PersonService' service: PersonService.
	ServiceLocatorDefault registerWithName: 'ProspectService' service: ProspectService.
	ServiceLocatorDefault registerWithName: 'CountryService' service: CountryService.
	ServiceLocatorDefault registerWithName: 'ManagerService' service: ManagerService.
	ServiceLocatorDefault registerWithName: 'ProspectStateService' service: ProspectStateService