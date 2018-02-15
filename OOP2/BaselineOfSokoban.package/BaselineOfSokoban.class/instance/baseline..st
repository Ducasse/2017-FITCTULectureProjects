baselines
baseline: spec
    <baseline>

    spec for: #common do: [
		  spec
            baseline: 'Bloc'
            with: [ spec repository: 'github://pharo-graphics/Bloc:pharo6.1/src' ].
        spec package: 'Sokoban' with: [ spec requires: #('Bloc') ].
        spec package: 'SokobanTests'.
        spec group: 'default' with: #('Sokoban' 'SokobanTests') ]