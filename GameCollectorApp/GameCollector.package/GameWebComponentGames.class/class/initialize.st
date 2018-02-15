initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'examples/games'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: TBSJasnyDeploymentLibrary;
		addLibrary: TBSVerticalTabsDeploymentLibrary