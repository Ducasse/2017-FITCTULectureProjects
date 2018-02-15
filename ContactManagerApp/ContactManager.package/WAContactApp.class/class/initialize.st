initialization
initialize
	(WAAdmin register: self asApplicationAt: 'contacts')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary.
		"FileIn exception avoiding"
	[ BaseRepositoryService setupMongoRepository.
	self registerServices.
	self registerValidators ]
		on: Error
		do: [  ]