initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'examples/form'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: TBSJasnyDeploymentLibrary;
		addLibrary: TBSVerticalTabsDeploymentLibrary