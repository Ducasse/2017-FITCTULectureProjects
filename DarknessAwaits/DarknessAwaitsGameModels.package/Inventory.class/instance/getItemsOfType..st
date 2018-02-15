adding
getItemsOfType: typeToFind
	| filteredItems |
	
	filteredItems := OrderedCollection new.
	filteredItems := items select: [ :each | (each type = typeToFind) ].
		 
	^ filteredItems 