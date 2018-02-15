rendering
renderContentOn: html
	books asOrderedCollection
		do: [ :eachBook | 
			html
				render: (WABookComponent withBook: eachBook);
				form: [ html button
						callback: [ root call: (WASingleBookView withBook: eachBook withController: controller) ];
						with: 'View'.
					html button
						callback: [ | newBook |
							newBook := root call: (WABookForm withBook: eachBook).
							controller updateOne: eachBook to: newBook ];
						with: 'Edit'.
					html button
						callback: [ controller removeOne: eachBook ];
						with: 'Delete' ].
			html break ]