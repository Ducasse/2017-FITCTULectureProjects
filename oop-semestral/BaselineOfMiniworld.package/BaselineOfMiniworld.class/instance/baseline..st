baseline
baseline: spec
    <baseline>

    spec for: #common do: [
        spec
            baseline: 'Bloc'
            with: [ spec repository: 'github://pharo-graphics/Bloc:pharo6.1/src' ].
        spec package: 'Miniworld' with: [ spec requires: #('Bloc') ].
        spec group: 'default' with: #('Miniworld') ]