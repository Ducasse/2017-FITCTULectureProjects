public
postTweet: aTwitterSDK status: aString image: aFileName
	| response mediaID |
	aFileName ifNotNil: [ response := aTwitterSDK mediaUploadFile: aFileName additionalOwners: nil.
	mediaID := response at: 'media_id' ].
	^ aTwitterSDK
		statusesUpdateWithStatus: aString
		inReplyToStatusID: nil
		possiblySensitive: nil
		lat: nil
		long: nil
		placeID: nil
		displayCoordinates: nil
		trimUser: nil
		mediaIDs: mediaID
		enableDMCommands: nil
		failDMCommands: nil