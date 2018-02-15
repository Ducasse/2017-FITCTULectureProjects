validation
getMessage
	min ifNil: [ ^ '"' , fieldDisplayName , '" field is not less or equal than ' , max asString ].
	max ifNil: [ ^ '"' , fieldDisplayName , '" field is not great or equal than ' , min asString ].
	^ '"' , fieldDisplayName , '" field is not in the range between ' , min asString , ' and ' , max asString