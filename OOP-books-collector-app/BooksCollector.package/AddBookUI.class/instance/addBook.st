action
addBook
	ZnClient new
		url: self url, '/books/';", idTextField text;"
		formAt: 'title' put: titleTextField text;
		formAt: 'genre' put: genreTextField text;
  		formAt: 'year' put: yearTextField text;
		formAt: 'writer' put: writerTextField text;
  		formAt: 'publisher' put: publisherTextField text;
		formAt: 'number' put: countTextField text;
  		put.