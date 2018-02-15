utility
addTo: aResCol from: aDB matching: aSearchRequest by: aMessageSymbol
	aDB
		do: [ :book | 
			(aSearchRequest requestValue match: (book perform: aMessageSymbol))
				ifTrue: [ aResCol add: book ] ]