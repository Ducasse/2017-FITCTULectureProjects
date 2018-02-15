rendering
renderModalWithGame: aGame On: html
	| person |
			html tbsModal
				id: 'lend';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
												html tbsModalTitle
												level: 4;
												with: 'Do you want to lend this game to someone?' ].
										html form: [
											html tbsModalBody: [ 
												html text: 'This will set state as lended. You can specify name of the person to which you are lending this game.'.
												html break.
												html break.
												html label: 'I am lending this game to: '.
													html textInput
														type: 'text';
														attributeAt: 'placeholder' put: 'Name of a person';
														callback: [ :value | 	person := value ].
												 ].
									   		html tbsModalFooter:[
													html tbsButton beDanger with: 'Close'.
													html tbsButton beSuccess
														callback: [ aGame lendTo: person ];
														with: 'Save changes' ] ] ] ] ].