api
getGameDetail: anId
	| game json |
	
	json := ZnClient new
   url: Url,'/games/',anId asString,'?fields=name,summary,popularity,first_release_date,cover';
	headerAt: 'user-key' put: ApiKey ;
   get.

	game := self gameFromJson: json.

	^game.
