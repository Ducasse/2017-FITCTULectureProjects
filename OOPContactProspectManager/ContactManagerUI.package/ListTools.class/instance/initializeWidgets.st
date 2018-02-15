initialization
initializeWidgets
	|l|
	orderMethodsLabel := self newLabel label: 'Order by:'.
	orderMethodsList := self newDropList.
	
	l := OrderedCollection new.
	l 	add: FirstNameOrder new;
		add: LastNameOrder new.
	orderMethodsList items: l.
	orderMethodsList displayBlock: [ :x | x orderName].
	orderMethodsList setSelectedIndex: 1.