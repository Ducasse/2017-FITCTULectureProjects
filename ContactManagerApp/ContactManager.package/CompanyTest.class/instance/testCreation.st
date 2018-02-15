tests
testCreation
	| company |
	company := Company
		cname: 'Sony'
		manager: 'Donald'
		country: 'Russia'
		isCustomer: true
		isPartner: true.
	self assert: company cname equals: 'Sony'.
	self assert: company manager equals: 'Donald'.
	self assert: company country equals: 'Russia'.
	self assert: company isCustomer equals: true.
	self assert: company isPartner equals: true