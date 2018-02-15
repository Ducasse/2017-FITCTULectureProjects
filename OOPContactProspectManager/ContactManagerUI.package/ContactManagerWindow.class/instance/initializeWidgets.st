initialization
initializeWidgets
	myAnnouncer := Announcer new.
	
	sidebar := Sidebar new.
	sidebar myAnnouncer: myAnnouncer.
		
	contactDetails := ContactDetails new.
	contactDetails myAnnouncer: myAnnouncer.
		
	self focusOrder
		add: sidebar;
		add: contactDetails