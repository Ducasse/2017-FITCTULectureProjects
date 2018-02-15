rendering
renderPerson: aPerson on: html
	html
		tableRow: [ html
				tableData: aPerson firstName;
				tableData: aPerson lastName;
				tableData: aPerson email;
				tableData: aPerson phoneNumber;
				tableData: aPerson address;
				"tableData: aPerson company;"
					tableData: aPerson position;
				tableData: [ html
						tbsButtonGroup: [ self
								renderEditButtonFor: aPerson on: html with: [ WAPerson editPerson: aPerson ];
								renderRemoveButtonFor: aPerson on: html with: [ self removePerson: aPerson ] ] ] ]