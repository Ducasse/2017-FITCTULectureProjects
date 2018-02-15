initialization
loadGameModelItems

	weaponsDB := JsonParser instance parseDictionaryFrom: globalSettings weaponItemsDefinitionPath convertToType: WeaponItem.
	defenseDB := JsonParser instance parseDictionaryFrom: globalSettings defenseItemsDefinitionPath convertToType: DefenseItem.
	monstersDB := JsonParser instance parseDictionaryFrom: globalSettings monsterDefinitionPath convertToType: Monster.