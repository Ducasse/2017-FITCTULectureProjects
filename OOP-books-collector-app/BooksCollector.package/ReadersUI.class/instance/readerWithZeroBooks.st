action
readerWithZeroBooks
	|getString hisBooks|
	getString:= ( ZnEasy get: self url, '/readers/', readersList selectedItem id asString, '/books') entity string.
	hisBooks:= (STON fromString: getString).
	^ (hisBooks size = 0).