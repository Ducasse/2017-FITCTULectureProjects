Twitter collections
collectionsEntriesAddWithID: id tweetID: tweetID relativeTo: relativeTo above: above
	"https://dev.twitter.com/rest/reference/post/collections/entries/add"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'entries';
		addPathSegment: 'add.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	tweetID ifNotNil: [ u queryAt: 'tweet_id' put: tweetID ].
	relativeTo ifNotNil: [ u queryAt: 'relative_to' put: relativeTo ].
	above ifNotNil: [ u queryAt: 'above' put: above ].
	^ self executePOSTRequestWithURL: u