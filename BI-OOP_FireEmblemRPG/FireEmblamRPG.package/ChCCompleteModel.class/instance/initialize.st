initialization
initialize 
	super initialize. 
	classLists  := OrderedCollection new. 
	classLists add: (ChCClassListModel new).
	classLists add: (ChCClassListModel new).
	classLists add: (ChCClassListModel new).
	classLists add: (ChCClassListModel new).
	champNameArray := self allPotentialNames at: self allPotentialNames size atRandom.