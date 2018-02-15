removing
removeCompany: aCompany
	"try to find any company dependencies"

	self isValidated: true.
	(ValidationManager validateRemove: aCompany onGroup: self class name)
		ifTrue: [ self companyService removeEntity: aCompany ]