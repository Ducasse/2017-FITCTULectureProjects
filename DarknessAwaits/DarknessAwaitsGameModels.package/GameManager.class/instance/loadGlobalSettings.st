initialization
loadGlobalSettings
	globalSettings := JsonParser instance parseObjectFrom: globalSettingsPath  convertToType: GlobalSettings.
	