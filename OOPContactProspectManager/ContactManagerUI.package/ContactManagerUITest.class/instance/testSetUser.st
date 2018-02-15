tests
testSetUser
	|c|
	c := ContactManagerWindow new.

	c user: (User new id:4; firstName: 'John'; lastName: 'Ford'; 
			company: 'Ford motors'; roleInCompany: 'CEO'; email: 'gmail.com';
			phoneNumber: 911; yourself).
			
	self assert: (c sidebar profile userNameLabel label) equals: 'John Ford'.
	self assert: (c contactDetails userProfile firstNameField textHolder value) 
		equals: 'John'.