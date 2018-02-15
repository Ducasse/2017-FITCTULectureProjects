as yet unclassified
openWindowWithUser: aUser
	appWindow user: aUser; open.
	appWindow sidebar contactList contacts: aUser associatedContacts.
	appWindow contactDetails callHistory sessionList items: (aUser callHistory).