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
				package: 'Reviewnator'
				with: [ spec requires: #('Seaside3' 'Bootstrap' 'NeoCSV' 'SeasideDeployer') ].
			spec postLoadDoIt: #postLoadActions ]