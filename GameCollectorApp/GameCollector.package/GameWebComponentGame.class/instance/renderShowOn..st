accessing
renderShowOn: html
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
	html text: game summary.
	html break.
	html text: game platform.
	game customAttributes associations do: [ :attribute | html break. html label: attribute key,':'. html break. html text: attribute value.]. 
	html break.
	html render: game state.