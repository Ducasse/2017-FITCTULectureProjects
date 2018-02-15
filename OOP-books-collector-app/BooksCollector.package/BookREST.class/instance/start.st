controlling
start
	teapot
		GET: '/books' -> books;
		GET: '/books/<id>' -> [ :req |  books at: (req at: #id)];
				
		PUT: '/books' -> [ :req |
			| book random |
			random:= self randomValidId.
			book:= Book new.
			book id: random asInteger.
			book title: (req at: #title ifAbsent: [#unknown]).
			book genre: (req at: #genre ifAbsent: [#unknown]).
			book year: (req at: #year ifAbsent: [Date today year]) asInteger.
			book writer: (req at: #writer ifAbsent: [#unknown]).
			book publisher: (req at: #publisher ifAbsent: [#unknown]).
			book number: (req at: #number ifAbsent: [ 1 ]) asInteger.
			books at: (random asString) put: book.];
		
		PUT: '/books/<id>' -> [ :req |
			| book |
			book := Book new.
			book id: (req at: #id) asInteger.
			book title: (req at: #title ifAbsent: [#unknown]).
			book genre: (req at: #genre ifAbsent: [#unknown]).
			book year: (req at: #year ifAbsent: [Date today year]) asInteger.
			book writer: (req at: #writer ifAbsent: [#unknown]).
			book publisher: (req at: #publisher ifAbsent: [#unknown]).
			book number: (req at: #number ifAbsent: [1]) asInteger.
			books at: (req at: #id) put: book. ];
		
		PUT: '/books/<id>/incr' -> [ :req |
			self incrementBook: (books at: (req at: #id)).
		  ];
		
		PUT: '/books/<id>/decr' -> [ :req |
			self decrementBook: (books at: (req at: #id)).
		  ];
				
		PUT: '/books/<id>/add' -> [ :req | 
				self add: (req at: #number ifAbsent: [1]) asInteger toBook: (books at: (req at: #id)) ];
				
		DELETE: '/books/<id>' -> [ :req | books removeKey: (req at: #id) ];
		
		exception: KeyNotFound -> (TeaResponse notFound body: 'Not found.');
		start