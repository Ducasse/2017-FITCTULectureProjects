accessing
companies
	^ companies ifNil: [ companies := self getAllCompanies ]