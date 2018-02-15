baselines
baseline: spec
    <baseline>

    spec for: #common do: [
			spec
            baseline: 'Seaside3'
            with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
	
        spec
            baseline: 'Bootstrap'
            with: [ spec repository: 'github://astares/Seaside-Bootstrap:master/src' ].
        spec package: 'GameCollector' with: [ spec requires: #('Bootstrap' 'Seaside3') ].
        spec group: 'default' with: #('GameCollector') ]