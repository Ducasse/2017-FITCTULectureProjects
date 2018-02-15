rendering
renderContentOn: html
	html
		tbsListGroup: [ html tbsListGroupItem with: [ html strong: 'Menu' ].
			self navigationParts do: [ :part | self renderPartOn: html with: part ] ]