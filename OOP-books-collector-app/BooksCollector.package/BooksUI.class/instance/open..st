action
open: aUrl
	url:= aUrl.
	opened ifFalse: [ self openWithSpec. self opened: true. ].
	self refreshBooksList.