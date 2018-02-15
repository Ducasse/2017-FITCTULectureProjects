baselines
baseline: spec
	<baseline>
	spec for: #common do:
	[
		spec
            baseline: 'Bloc'
            with: [ spec repository: 'github://pharo-graphics/Bloc:pharo6.1/src' ].
		spec project: 'NeoJSON' with:
		[
			spec
				className: 'ConfigurationOfNeoJSON';
				versionString: #'stable';
				repository: 'http://mc.stfx.eu/Neo'
		].
		spec package: 'MegaMiner' with: [ spec requires: #('Bloc' 'NeoJSON') ].
      spec group: 'default' with: #('MegaMiner')
	]