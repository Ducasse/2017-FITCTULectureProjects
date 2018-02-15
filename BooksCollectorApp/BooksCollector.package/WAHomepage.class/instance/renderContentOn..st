rendering
renderContentOn: html
	html div
		class: 'content';
		with: [ self renderGreetingOn: html.
			html
				form: [ html button
						callback: [ | newBook |
							newBook := self call: (WABookForm withBook: Book new).
							controller addOne: newBook
							];
						value: 'Add Book' ].
			html render: search.
			]