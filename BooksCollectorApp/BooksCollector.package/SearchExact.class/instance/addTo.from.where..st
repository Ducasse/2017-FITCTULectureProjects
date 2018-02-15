utility
addTo: aResCol from: aDB where: aMessageSymbol
	aResCol addAll: (aDB perform: aMessageSymbol with: searchRequest requestValue)