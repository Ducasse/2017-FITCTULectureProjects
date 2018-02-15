rendering
renderContentOn: html
	html div
		class: 'content';
		with: [ html table
				id: 'componentTab';
				with: [ html
						tableRow: [ html tableData
								class: 'leftComponent';
								with: 'Title:'.
							html tableData
								class: 'rightComponent';
								with: book title ];
						tableRow: [ html tableData
								class: 'leftComponent';
								with: 'Author:'.
							html tableData
								class: 'rightComponent';
								with: book author ];
						tableRow: [ html tableData
								class: 'leftComponent';
								with: 'Genre:'.
							html tableData
								class: 'rightComponent';
								with: book genre ];
						tableRow: [ html tableData
								class: 'leftComponent';
								with: 'Issued:'.
							html tableData
								class: 'rightComponent';
								with: book year ];
						tableRow: [ html tableData
								class: 'leftComponent';
								with: 'ISBN:'.
							html tableData
								class: 'rightComponent';
								with: book isbn ] ] ]