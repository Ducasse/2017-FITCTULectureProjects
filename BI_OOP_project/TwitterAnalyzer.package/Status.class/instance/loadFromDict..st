initialization
loadFromDict: aTweet
	tweet := aTweet.
	self setDate.
	self setLinks.
	self setStatus.
	self setTags.
	^ self.