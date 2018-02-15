as yet unclassified
userScreenName: aString
	(tweet includesKey: 'user')
		ifTrue: [ (tweet at: 'user') at: 'screen_name' put: aString. name := aString.]
		ifFalse: [ 
			| dict |
			dict := Dictionary new.
			dict at: 'screen_name' put: aString.
			tweet at: 'user' put: dict. name := aString].