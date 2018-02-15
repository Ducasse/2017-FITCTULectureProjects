rendering
renderAddGameForm: aGame On: html

	html tbsColumn
		smallSize:  2;
		with: [
				html tbsImage class: 'img-responsive center-block'; url: (aGame iconUrl ifNil: [ html image placeHolder: '100%x100%' ] ).
			].
	html tbsColumn
		smallSize:  3;
					with: [
						html label: 'Name:'.
						html break.
						html text: aGame name.
						].
						
	html tbsColumn
	smallSize:  4;
	with: [
			html label: 'description:'.
			html break.
			html text: aGame summary.
	].
						
	html tbsColumn
	smallSize:  2;
	with: [
			html anchor
				class:'btn btn-default';
				callback: [ GameDB uniqueInstance add: aGame. self call: (GameWebComponentGameEdit new game: aGame) ];
				with: 'choose'
	].
	
	