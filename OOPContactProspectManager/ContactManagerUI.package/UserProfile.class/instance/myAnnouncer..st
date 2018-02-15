accessing
myAnnouncer: anObject
	myAnnouncer := anObject.
	
	myAnnouncer when: EditUserAnnouncement do: [ 
		:event | self userName: (event user)]. 