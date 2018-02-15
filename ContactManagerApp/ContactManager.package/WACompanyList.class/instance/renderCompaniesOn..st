rendering
renderCompaniesOn: html
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Name';
						tableHeading: 'Country';
						tableHeading: 'Customer';
						tableHeading: 'Partner';
						tableHeading: 'Manager'].
			self companiesDo:  [ :item | self renderCompany: item on: html ] ]