action
addReader
	ZnClient new 
		url: self url, '/readers/';", idTextField text;"
		formAt: 'firstName' put: firstNameTextField text;
  		formAt: 'lastName' put: lastNameTextField text;
		formAt: 'nationality' put: nationalityTextField text;
  		formAt: 'birthYear' put: birthYearTextField text;
  		put.