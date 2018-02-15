as yet unclassified
getTweetsByText: aText type: aType count: aCount geo: aGeo
	| statuses results metadata |
	results := (twitterSDK searchTweetsWithQuery: aText 
					geocode: aGeo "'37.781157,-122.398720,1mi'"
					lang: nil 
					locale: nil 
					resultType: aType 
					count: aCount 
					until: nil 
					sinceID: nil 
					maxID: nil 
					includeEntities: nil 
					callback: nil).
	statuses := results at: 'statuses'.
	metadata := results at: 'search_metadata'.
	
	^ self buildTweetBundle: (self transformTweetArrayToList: statuses) withMetadata: metadata.