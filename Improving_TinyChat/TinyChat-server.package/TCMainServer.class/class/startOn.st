instance creation
startOn
	uniqueInstance ifNil:[uniqueInstance := self new initializePort: 8080;
		registerRoutes].
	^uniqueInstance
	" 
startOn 
	^ self new initializePort: 8080;
		registerRoutes."