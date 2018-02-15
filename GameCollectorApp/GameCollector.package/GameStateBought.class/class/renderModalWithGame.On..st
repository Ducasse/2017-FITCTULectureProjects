rendering
renderModalWithGame: aGame On: html
	| place |
		html tbsModal
				id: 'buy';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
												html tbsModalTitle
												level: 4;
												with: 'Did you bought this game?' ].
										html form: [
											html tbsModalBody: [ 
												html text: 'This will set state of the game as bought. To finish this request we need to know where you bought this game.'.
												html break.
												html break.
												html label: 'Bought from where: '.
													html textInput
														type: 'text';
														attributeAt: 'placeholder' put: 'Name of place';
														callback: [ :value | 	place := value ].
												 ].
									   		html tbsModalFooter:[
													html tbsButton beDanger with: 'Close'.
													html tbsButton beSuccess
														callback: [ aGame buyFrom: place ];
														with: 'Save changes' ] ] ] ] ].