initialization
registerValidators
	ServiceLocatorDefault registerWithName: 'RequiredValidator' service: RequiredValidator.
	ServiceLocatorDefault registerWithName: 'RequiredOidValidator' service: RequiredOidValidator.
	ServiceLocatorDefault registerWithName: 'RangeValidator' service: RangeValidator.
	ServiceLocatorDefault registerWithName: 'RemoveCompanyValidator' service: RemoveCompanyValidator.