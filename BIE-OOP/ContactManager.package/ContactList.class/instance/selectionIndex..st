accessing
selectionIndex: anIndex
	selectionIndex := anIndex.
	self changed: #selectionIndex; changed: #contactSelected.