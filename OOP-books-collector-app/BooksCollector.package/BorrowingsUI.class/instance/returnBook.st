action
returnBook
	|reader book index|
	reader:= readersList selectedItem.
	book:= borrowingsList selectedItem.
	index:= borrowingsList selectedIndex.
	reader isNil ifFalse:[
		book isNil ifFalse: [
		ZnClient new
			url: self url, '/readers/', reader id asString, '/books/', book id asString;
			delete.
		].	
	].
	self refreshBorrowingsList.
	borrowingsList setSelectedIndex: index.