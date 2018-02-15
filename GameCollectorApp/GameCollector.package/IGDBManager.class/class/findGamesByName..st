api
findGamesByName: aName
	| json list |
	
	json := ZnClient new
   url: Url,'/games/?search=',aName;
	headerAt: 'user-key' put: ApiKey ;
   get.
	
	list := self gameListFromJson: json.
	^ self getGamesDetails: list.