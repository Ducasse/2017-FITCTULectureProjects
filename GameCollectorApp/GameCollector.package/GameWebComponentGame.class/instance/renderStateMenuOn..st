accessing
renderStateMenuOn: html

		html tbsButtonGroup: [ html tbsDropdownButton
						bePrimary;
						with: [ html
								text: 'Actions ';
								tbsCaret ].
					html
						tbsDropdownMenu: [ 
							
		
							game state validTransitions
				do: [ :state | state renderTbsDropdownMenuItemOn: html ].
				
					
			].
			game state validTransitions
				do: [ :state | state renderModalWithGame: game On: html ].
								

							]
	