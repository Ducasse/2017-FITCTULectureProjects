as yet unclassified
exportContacts: aFilePath
	| contactfile contactlist |
	contactfile := aFilePath asFileReference.
	contactlist := OrderedCollection new.
	database valuesDo: [ :contact | contactlist addLast: contact property ].
	contactfile writeStreamDo: [ :stream | stream nextPutAll: (STON toString: contactlist) ].