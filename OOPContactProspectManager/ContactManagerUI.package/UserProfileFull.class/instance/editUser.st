unclassified
editUser
	user username: usernameField textHolder value.
	user lastName: lastNameField textHolder value.
	user firstName: firstNameField textHolder value.
	user password: passwordField textHolder value.
	user email: emailField textHolder value.
	user phoneNumber: phoneNumberField textHolder value.
	user company: companyField textHolder value.
	user roleInCompany: roleField textHolder value.
	user address: addressField textHolder value.
	
	((user username  = '') | (user password = '') |
	 (user firstName = '') | (user lastName = '')) ifFalse:[user save]