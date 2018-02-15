accessing
renderModalReturnOn: html

		html tbsModal
				id: 'return';
				with: [ html
						tbsModalDialog: [ html
								tbsModalContent: [ html
										tbsModalHeader: [ html tbsModalCloseIcon.
											html tbsModalTitle
												level: 4;
												with: 'Return this game to previous state?' ].
									html form: [
										html tbsModalBody: [ html text: 'This will set state to state:'.
																	html break.
																	html render: game state previousState.
											 ].
									html
										tbsModalFooter:[
											html tbsButton beDanger with: 'Close'.
											html tbsButton beSuccess
												callback:[ game return  ];
												with: 'Save changes' ] ] ] ] ].
			