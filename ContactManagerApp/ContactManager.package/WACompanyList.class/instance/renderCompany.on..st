rendering
renderCompany: aCompany on: html
	html
		tableRow: [ html
				tableData: aCompany cname;
				tableData: (self countryService getCountryById: aCompany country);
				tableData: aCompany isCustomer;
				tableData: aCompany isPartner;
				tableData: (self managerService getManagerById: aCompany manager);
				tableData: [ html
						tbsButtonGroup: [ self
								renderEditButtonFor: aCompany on: html with: [ WACompany editCompany: aCompany ];
								renderRemoveButtonFor: aCompany on: html with: [ self removeCompany: aCompany ] ] ] ]