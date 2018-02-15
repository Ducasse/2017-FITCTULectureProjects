as yet unclassified
searchUser: anUser withID: id
	^ (User new) loadFromDict: ((twitterSDK usersLookupWithScreenName: anUser 
														userID: id
														includeEntities: true) at: 1).