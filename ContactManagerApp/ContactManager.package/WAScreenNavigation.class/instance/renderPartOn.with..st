rendering
renderPartOn: html with: part
	html tbsLinkifyListGroupItem
		callback: [ self screenPart current: (part link initializeWithScreenPart: self screenPart) ];
		with: part title
	"      class: 'active' if: aCategory = self postsList currentCategory ;"