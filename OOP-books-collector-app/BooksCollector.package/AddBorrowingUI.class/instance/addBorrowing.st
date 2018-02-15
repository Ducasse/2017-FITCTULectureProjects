action
addBorrowing
	|reader book index|
	reader:= readersList selectedItem.
	book:= booksList selectedItem.
	index:= booksList selectedIndex.
	reader isNil ifFalse:[
		book isNil ifFalse: [
		ZnClient new
			url: self url, '/readers/', reader id asString, '/books/', book id asString;
			put.
		].	
	].
	self refreshBookList.
	booksList setSelectedIndex: index.