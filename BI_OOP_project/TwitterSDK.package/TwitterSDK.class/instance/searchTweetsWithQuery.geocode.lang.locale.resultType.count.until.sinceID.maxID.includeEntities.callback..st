Twitter search
searchTweetsWithQuery: query geocode: geocode lang: lang locale: locale resultType: resultType count: count until: until sinceID: sinceID maxID: maxID includeEntities: includeEntities callback: callback
	"https://dev.twitter.com/rest/public/search"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'search';
		addPathSegment: 'tweets.json'.
		u queryAt: 'tweet_mode' put: 'extended'.
	query ifNotNil: [ u queryAt: 'q' put: query ].
	geocode ifNotNil: [ u queryAt: 'geocode' put: geocode ].
	lang ifNotNil: [ u queryAt: 'lang' put: lang ].
	locale ifNotNil: [ u queryAt: 'locale' put: locale ].
	resultType ifNotNil: [ u queryAt: 'result_type' put: resultType ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	until ifNotNil: [ u queryAt: 'until' put: until ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	callback ifNotNil: [ u queryAt: 'callback' put: callback ].
	^ self executeGETRequestWithURL: u