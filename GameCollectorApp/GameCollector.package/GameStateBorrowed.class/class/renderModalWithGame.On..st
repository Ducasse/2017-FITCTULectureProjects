rendering
renderModalWithGame: aGame On: html
			| person |
			html tbsModal
				id: 'borrow';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
												html tbsModalTitle
												level: 4;
												with: 'Do you want to borrow this game from someone?' ].
										html form: [
											html tbsModalBody: [ 
												html text: 'This will set state of the game to borrowed. We need to just know from who you are borrowing it :)'.
												html break.
												html break.
												html label: 'Borrowing from: '.
													html textInput
														type: 'text';
														attributeAt: 'placeholder' put: 'Name of a person';				
         												callback: [ :value | 	person := value ].
												 ].
									   		html tbsModalFooter:[
													html tbsButton beDanger with: 'Close'.
													html tbsButton beSuccess
														callback: [ aGame borrowFrom: person ];
														with: 'Save changes' ] ] ] ] ].