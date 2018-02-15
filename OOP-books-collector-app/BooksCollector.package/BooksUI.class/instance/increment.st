action
increment
	booksList selectedItem isNil ifFalse: [
		ZnClient new
 			url: self url, '/books/', booksList selectedItem id asString, '/incr';
 			put.
		self refreshBooksList.
	].