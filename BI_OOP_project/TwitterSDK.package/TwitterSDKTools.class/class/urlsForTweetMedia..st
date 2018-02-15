private
urlsForTweetMedia: tweetMedia
	| oc |
	oc := OrderedCollection new.
	tweetMedia
		do: [ :each | 
			(each includesKey: 'media_url')
				ifTrue: [ oc add: (each at: 'media_url') ]
			].
	^ oc