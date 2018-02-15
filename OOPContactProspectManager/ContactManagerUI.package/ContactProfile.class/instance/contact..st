accessing
contact: aContact
	contact := aContact.
	nameLabel label: aContact firstName, ' ', aContact lastName.
	emailLabel label: 'Email: ', aContact email.
	phoneNumberLabel label: 'Phone number: ', aContact phoneNumber.
	companyLabel label: 'Company: ', aContact company.
	roleInCompanyLabel label: 'Role in company: ', aContact roleInCompany.