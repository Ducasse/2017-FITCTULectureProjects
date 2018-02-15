private
host: aHost port: aPort login: aLogin
	webPath url: 'http://' , aHost , ':' , aPort asString.
	login := aLogin