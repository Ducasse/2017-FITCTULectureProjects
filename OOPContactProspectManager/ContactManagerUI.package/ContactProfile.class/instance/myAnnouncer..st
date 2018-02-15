accessing
myAnnouncer: anObject
	myAnnouncer := anObject.
	myAnnouncer when: ContactClickAnnouncement do: [ :item | 
		self contact: item contact].