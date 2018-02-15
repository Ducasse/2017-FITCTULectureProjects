accessing
myAnnouncer: anObject
	myAnnouncer := anObject.
	contactProfile myAnnouncer: myAnnouncer.
	userProfile myAnnouncer: myAnnouncer.
	callHistory myAnnouncer: myAnnouncer.
	reminderList myAnnouncer: myAnnouncer.
	
	myAnnouncer when: HomeButtonPressed do:[ :u |
		reminderList listView items: u user notifications.
		self userRebuild
		].
	
	myAnnouncer when: ContactClickAnnouncement do:[
		self contactRebuild
		].