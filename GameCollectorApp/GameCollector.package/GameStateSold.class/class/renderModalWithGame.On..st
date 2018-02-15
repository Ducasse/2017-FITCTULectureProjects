rendering
renderModalWithGame: aGame On: html
	| price person |
			html tbsModal
				id: 'sell';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
												html tbsModalTitle
												level: 4;
												with: 'Did you sell this game?' ].
										html form: [
											html tbsModalBody: [ 
												html text: 'If you have sold this game to someone. You can fill persons name and price.'.
												html break.
												html break.
												html label: 'Selling to: '.
													html textInput
														type: 'text';
														attributeAt: 'placeholder' put: 'Name of a person';
														callback: [ :value | 	person := value ].
												html label: 'For price: '.
													html textInput
														type: 'text';
														attributeAt: 'placeholder' put: 'Value';
														callback: [ :value | 	price := value ].
												 ].
									   		html tbsModalFooter:[
													html tbsButton beDanger with: 'Close'.
													html tbsButton beSuccess
														callback: [ aGame sellTo: person For: price ];
														with: 'Save changes' ] ] ] ] ].