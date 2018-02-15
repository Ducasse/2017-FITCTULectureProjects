blocks
deleteContactBlock
	^[ :c |
		user associatedContacts remove: c contact.
		user save.
		appWindow sidebar contactList contacts: user associatedContacts.
		appWindow myAnnouncer announce: HomeButtonPressed new.]