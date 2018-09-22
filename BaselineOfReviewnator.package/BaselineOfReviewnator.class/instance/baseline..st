baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				neoCSV: spec;
				seasideDeployer: spec.
			spec
				package: 'Reviewnator-seaside'
				with: [ spec requires: #('Seaside3' 'Bootstrap' 'SeasideDeployer') ].
			spec package: 'Reviewnator-PharoExtensions' with: [ spec requires: #('Seaside3') ].
			spec package: 'Reviewnator-importers' with: [ spec requires: #('NeoCSV') ].
			spec package: 'Reviewnator-persistence'.
			spec
				package: 'Reviewnator-deployer'
				with: [ spec requires: #('SeasideDeployer' 'Reviewnator-seaside') ] ]