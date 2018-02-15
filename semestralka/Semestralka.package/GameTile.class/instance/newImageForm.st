graphics file handeling
newImageForm
	model ifNil: [ ^ self error: 'no model is set' ].
	^ [ self ensureImagesExist. 
	(Form fromFileNamed: self imageName) scaledToSize: GameTileElement defaultSize ]
		on: Error
		do: [ ^ self
				error:
					'Unable to read file ' , self imageName
						, '. Create or enable access to the file in directory with the image.' ]