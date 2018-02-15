accessing
start
	teapot
		GET: '/readers' -> readers;
		GET: '/readers/<id>' -> [ :req | readers at: (req at: #id) ];
		GET: '/readers/<id>/books' -> [ :req | (readers at: (req at: #id)) books ];
		GET: '/readers/<id>/books/<idBook>' -> [ :req | (readers at: (req at: #id)) books at: (req at: #idBook)];

		PUT: '/readers' -> [ :req | 
			| reader random|
			random := (self randomValidId) asString.
			reader := Reader new.
			reader id: random.
			reader firstName: (req at: #firstName ifAbsent: [#unknown]).
			reader lastName: (req at: #lastName ifAbsent: [#unknown]).
			reader nationality: (req at: #nationality ifAbsent: [#unknown]).
			reader birthYear: (req at: #birthYear ifAbsent: [Date today year]) asInteger.
			readers at: random put: reader ];
		
		PUT: '/readers/<id>' -> [ :req | 
			| reader |
			reader := Reader new.
			reader id: (req at: #id).
			reader firstName: (req at: #firstName ifAbsent: [#unknown]).
			reader lastName: (req at: #lastName ifAbsent: [#unknown]).
			reader nationality: (req at: #nationality ifAbsent: [#unknown]).
			reader birthYear: (req at: #birthYear ifAbsent: [Date today year]) asInteger.
			readers at: (req at: #id) put: reader ];
				
		PUT: '/readers/<id>/books/<idBook>' -> [ :req |
			|book newBook|
			book := booksCollectorRest bookRest books at: (req at: #idBook).
			( book number == 0 )
				ifTrue: [TeaResponse notFound body: 'Book not available.'] 
				ifFalse: [
					self decrementBook: book.
					newBook := Book new.
					newBook setAll: book.
					(readers at: (req at: #id)) books at: (req at: #idBook) 
					ifPresent: [ self incrementBook: ((readers at: (req at: #id)) books at: (req at: #idBook))] 
					ifAbsent: [(readers at: (req at: #id)) books at: (req at: #idBook) put: newBook].
			]];
				
		DELETE: '/readers/<id>' -> [ :req | readers removeKey: (req at: #id) ];
		DELETE: '/readers/<id>/books/<idBook>' -> [ :req |
			|book|
			book := booksCollectorRest bookRest books at: (req at: #idBook).
			self incrementBook: book.
			self decrementBook: ((readers at: (req at: #id)) books at: (req at: #idBook)).
			( ((readers at: (req at: #id)) books at: (req at: #idBook)) number == 0 ) 
					ifTrue: [(readers at: (req at: #id)) books removeKey: (req at: #idBook).
			]];
		
		exception: KeyNotFound -> (TeaResponse notFound body: 'Not found.');
		start