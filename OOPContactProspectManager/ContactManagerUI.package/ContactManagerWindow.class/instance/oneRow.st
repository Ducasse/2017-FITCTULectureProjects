drawMethods
oneRow
	^SpecLayout composed 
	newRow: [ :row | row add: contactDetails; add: sidebar ];
	yourself 