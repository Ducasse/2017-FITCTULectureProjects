accessing
notifications
	^ notifications 
	ifNil: [ 
		notifications := OrderedCollection new.
		notifications]
	ifNotNil: [ 
		 notifications]