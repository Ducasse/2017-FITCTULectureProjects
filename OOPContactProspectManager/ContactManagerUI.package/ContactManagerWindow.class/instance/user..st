initialization
user: aUser
	self sidebar profile userName: aUser.
	self contactDetails userProfile user: aUser.
	(aUser notifications) ifNotNil: [  contactDetails reminderList listView items: aUser notifications]