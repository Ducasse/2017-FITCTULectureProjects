accessing tags
setTags
	| lin |
	lin := LinkedList new.
	
	(tweet includesKey: 'entities')
		ifTrue: [ 
						((tweet at: 'entities') includesKey: 'hashtags')
							ifTrue: [ 
								| array |
								array := (tweet at: 'entities') at: 'hashtags'.
								1 to: array size do: [ 
									:index |
									
									lin add: ((array at: index) at: 'text').
								].
								tags := lin asArray.
							]
							ifFalse: [ tags := #() ].		
					 ]
		ifFalse: [ tags := #( ) ].
	^ self.