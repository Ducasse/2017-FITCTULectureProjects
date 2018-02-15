rendering
renderContentOn: html

	html tbsNavbar beStaticTop with: [
		html tbsNavbarBrand
			url: 'games';
			with: 'Browse games' .
			
		html tbsNavbarBrand
			url: 'form';
			with: 'Add a new game'.
		
		]