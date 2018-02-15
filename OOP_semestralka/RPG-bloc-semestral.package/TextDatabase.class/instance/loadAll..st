initialize
loadAll: ResourceDir
   loaded := true.
	monsterNamesEN := (self loadDataToDictionary: (ResourceDir , '/text/en/monsters')).
	monsterNamesES := (self loadDataToDictionary:  (ResourceDir , '/text/spa/monsters')).
	
	messageAboutDamageEN := '? dealt ? damage to ?'.
	messageAboutDamageSPA := '? hizo ? daňos a ?'.
	
	messagePerishEN := '? ? perished.'.
	messagePerishSPA := '? ? perecieron.'.
	
	gameMessagesEN := (self loadDataToDictionary: (ResourceDir , '/text/en/game')).
	gameMessagesES := (self loadDataToDictionary: (ResourceDir , '/text/spa/game')).
	