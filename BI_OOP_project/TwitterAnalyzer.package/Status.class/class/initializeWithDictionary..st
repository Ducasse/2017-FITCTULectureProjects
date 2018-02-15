initialization
initializeWithDictionary: aDict
	| tweet |
	tweet := self new.
	tweet loadFromDict: aDict.
	^ tweet.