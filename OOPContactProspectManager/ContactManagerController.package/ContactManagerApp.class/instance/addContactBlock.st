blocks
addContactBlock
	^[ :c |
		 	user associatedContacts add: c.
			user save.
			appWindow sidebar contactList contacts: user associatedContacts ]