rendering
renderAttributesModalOn: html
	 | key value |
		html tbsModal
				id: 'custom';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
											html tbsModalTitle
												level: 4;
												with: 'Insert a new attribute.' ].
									html form: [
										html tbsModalBody: [ 	
												html label: 'Name: '.
    										   html textInput
												attributeAt: 'placeholder' put: 'Name of new attribute';         
			
       									   callback: [ :x | 	key := x ].
												html break.
												html label: 'Value: '.
							
    										   html textInput
												attributeAt: 'placeholder' put: 'Value of new attribute';         
			
       									   callback: [ :x |  value := x ].
												 ].
									html
										tbsModalFooter:[
											html tbsButton beDanger with: 'Close'.
											html tbsButton beSuccess
												callback:[key byteSize == 0  ifFalse:[ game customAttributes at: key put: value]   ];
												with: 'Save changes' ] ] ] ] ].