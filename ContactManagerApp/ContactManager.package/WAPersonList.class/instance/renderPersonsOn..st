rendering
renderPersonsOn: html
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Name';
						tableHeading: 'Surname';
						tableHeading: 'Email';
						tableHeading: 'PhoneNumber';
						tableHeading: 'Address';
						"tableHeading: 'Company';"
						tableHeading: 'Position' ].
			self personsDo: [ :person | self renderPerson: person on: html ] ]