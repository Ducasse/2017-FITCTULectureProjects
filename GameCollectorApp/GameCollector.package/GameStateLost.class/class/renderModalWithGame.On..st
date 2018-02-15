rendering
renderModalWithGame: aGame On: html

		html tbsModal
				id: 'lose';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
											html tbsModalTitle
												level: 4;
												with: 'Did you lost this game?' ].
									html form: [
										html tbsModalBody: [ html text: 'This will set the game as lost' ].
									html
										tbsModalFooter:[
											html tbsButton beDanger with: 'Close'.
											html tbsButton beSuccess
												callback:[ aGame lose  ];
												with: 'Save changes' ] ] ] ] ].