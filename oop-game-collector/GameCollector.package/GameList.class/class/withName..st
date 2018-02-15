instance creation
withName: aString
	|list|
	list := self new.
	list listName: aString.
	^ list.