as yet unclassified
openWithUser: aUser
	|l|
	l := Contact getAllContacts.
	l remove: aUser.
	userList items: l.
	
	self openWithSpec