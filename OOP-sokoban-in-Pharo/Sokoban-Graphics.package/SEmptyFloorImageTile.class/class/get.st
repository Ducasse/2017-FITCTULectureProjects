loading
get
	Instance ifNil: [ Instance := self load ].
	 ^ Instance