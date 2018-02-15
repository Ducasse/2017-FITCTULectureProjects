accessing
myAnnouncer: anObject
	myAnnouncer := anObject.
	orderMethodsList whenSelectedItemChanged: [ :item | 
		myAnnouncer announce: (OrderMethodWasChanged new orderMethodBlock: item orderBlock) ].