action
deleteBook
	booksList selectedItem isNil ifFalse: [
		| index |
		index:= booksList selectedIndex.
		ZnClient new
 			url: self url, '/books/', booksList selectedItem id asString;
 			delete.
		self refreshBooksList.
		booksList setSelectedIndex: index.
	].