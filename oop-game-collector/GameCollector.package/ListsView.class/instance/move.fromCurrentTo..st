initialization
move: aGame fromCurrentTo: aTarget
	listModel resetListSelection.
	listModel selectedItem move: aGame to: aTarget.
	self selectList: listModel selectedItem.