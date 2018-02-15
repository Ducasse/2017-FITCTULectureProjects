initialization
renderContentOn: html
	| game name |
	super renderContentOn: html.
	html div
       class: 'container';
       with: [
  	 html form: [
      html label: 'Name: '.
      html textInput
			type: 'text';
			attributeAt: 'placeholder' put: 'Name of game';         
         callback: [ :value | 	name := value ].
		html horizontalRule.
		html submitButton
			   callback: [ 
				name byteSize == 0 ifTrue:[ self inform: 'Name has to be filled.'] ifFalse:[
				game := Game new name: name . GameDB uniqueInstance add: game . self call: (GameWebComponentGameEdit new game:game )]
					];
            value: 'Save'.
  		html submitButton 
			   callback: [ 
				name byteSize == 0 ifTrue:[ self inform: 'Name has to be filled.'] ifFalse:[
				self call: (GameWebComponentSelectGame new games: (IGDBManager findGamesByName: name))  ]];
            value: 'Load from IGDB'.
		html horizontalRule  ]
]