rendering
renderEditOn: html
	 html form: [
		html heading level:2; with: game name.
		html break .
		html tbsImage class: 'img-responsive'; url: (game iconUrl ifNil: [ html image placeHolder: '90x90' ] ).
		html break.
		html label: 'release date:'.
		html break.
		html text: game release.
		html break.
		html break.
		html label: 'description:'.
		html break.
		html textArea
		         callback: [ :value | 	game summary: value ];
					with: game summary.
		html break.
      html label: 'name: '.
		html break.
      html textArea
         callback: [ :value | 	value byteSize == 0  ifFalse:[ game name: value ]  ];
			with: game name.
		html break.
		html label: 'platform: '.
		html break.
      html textInput
         callback: [ :value | 	 game platform: value ];
			with: game platform.

		game customAttributes associations do: [ :attribute | html break. html label: attribute key,':'. html break. html textInput
         callback: [ :value | game customAttributes at: attribute key put: value  ];
			with: attribute value. html anchor class:'btn btn-danger btn-xs' ; callback: [ game customAttributes removeKey: attribute key  ]; with: #delete ]. 
		
		html break.
		html button: [ html html: '<a data-toggle="modal" href="#custom"> add attribute </a>' ]	.
			html break.
		html break.
		html submitButton
			   callback: [
					self call: GameWebComponentGames new
				 ];
            value: 'Save'.

 ] .
self renderAttributesModalOn: html.