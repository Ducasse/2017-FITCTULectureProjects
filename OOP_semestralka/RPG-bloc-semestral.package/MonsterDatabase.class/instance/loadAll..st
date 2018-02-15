initialize
loadAll: aVariables
	monsters := Dictionary new.
	variables := aVariables.

   "load monsters"
	self loadMonster: (Vampire construct: aVariables count: 1).
	self loadMonster: (Zombie construct: aVariables count: 1).
	self loadMonster: (Monk construct: aVariables count: 1).