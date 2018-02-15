accesing
acceptPresenter: presenter
	(self onTarget ) ifTrue: [ presenter addBoxOnTargetElement ]
						  ifFalse: [ presenter addBoxElement ]
	