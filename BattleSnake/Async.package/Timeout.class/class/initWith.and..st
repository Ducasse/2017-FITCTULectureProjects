initializing
initWith: aTime and: aCallback
	| instance |
	instance := self new.
	instance timeLeft: aTime.
	instance callback: aCallback.
	instance active: false.
	^ instance.
