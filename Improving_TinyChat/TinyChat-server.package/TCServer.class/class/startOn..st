initialize
startOn: aPortNumber
	TCMainServer uniqueInstance addServer: aPortNumber.
	^ self new initializePort: aPortNumber;
		registerRoutes;
		registerErrorHandlers. 
	