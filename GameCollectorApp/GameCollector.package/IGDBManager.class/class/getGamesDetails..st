api
getGamesDetails: anIdList
	| json neo |	
	
	json := ZnClient new
   url: Url,'/games/',($, join: anIdList),'?fields=name,summary,popularity,first_release_date,cover';
	headerAt: 'user-key' put: ApiKey ;
   get.

	neo := NeoJSONReader fromString: json.
	^ neo collect: [ :each | self gameFromNEOJson: each ].	
