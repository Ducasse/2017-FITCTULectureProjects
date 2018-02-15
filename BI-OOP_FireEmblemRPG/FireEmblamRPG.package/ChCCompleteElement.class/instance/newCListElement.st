instance creation
newCListElement 
	"^ ChCClassListElement new menuGameModel: (ChCClassListModel new)"
	"^ ChCClassListElement new"
	listNum := listNum + 1.
	^ ChCClassListElement new relocate: (listNum * self distanceBetweenLists) @ self distanceOfListsFromTop 

