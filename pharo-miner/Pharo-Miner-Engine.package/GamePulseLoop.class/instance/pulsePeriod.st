period
pulsePeriod
	waittime ifNil: [ waittime := self defaultPulsePeriod ].
	^ waittime