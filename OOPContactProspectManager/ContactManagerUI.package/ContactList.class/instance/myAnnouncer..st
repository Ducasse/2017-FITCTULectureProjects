accessing
myAnnouncer: anObject
	myAnnouncer := anObject.
	listTools myAnnouncer: myAnnouncer.
	
	listView whenSelectedItemChanged: [ :item | 
		item ifNotNil: [ 
		myAnnouncer announce: (ContactClickAnnouncement new contact: item; yourself) ]].

	myAnnouncer when: OrderMethodWasChanged do:[ :i |
		listView sortingBlock: i orderMethodBlock.]