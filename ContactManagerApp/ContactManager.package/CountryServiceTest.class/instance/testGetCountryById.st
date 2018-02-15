tests-as yet unclassified
testGetCountryById
	|countryService|.
	countryService := CountryService new.
	self assert: (countryService getCountryById: 1) equals: 'Angola'. 
	self assert: (countryService getCountryById: 2) equals: 'Czechia'. 
	self assert: (countryService getCountryById: 3) equals: 'Russia'. 
	self assert: (countryService getCountryById: 4) equals: 'Slovakia'. 
	self assert: (countryService getCountryById: 5) equals: 'United States'. 
	