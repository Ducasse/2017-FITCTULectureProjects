rendering
renderModalWithGame: aGame On: html

		html tbsModal
				id: 'wish';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
												html tbsModalTitle
												level: 4;
												with: 'Do you want to add this game to wish list?' ].
										html form: [
											html tbsModalBody: [ 
												html text: 'This will set state of the game as desired.'.
												 ].
									   		html tbsModalFooter:[
													html tbsButton beDanger with: 'Close'.
													html tbsButton beSuccess
														callback: [ aGame want ];
														with: 'Save changes' ] ] ] ] ].