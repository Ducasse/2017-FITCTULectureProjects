rendering
renderEditButtonFor: anEntity on: html with: callback
	html tbsButton
		beSuccess;
		callback: [ self call: callback value.
			self rebind	"ifNotNil: [ self rebind ]" ];
		with: 'Edit'