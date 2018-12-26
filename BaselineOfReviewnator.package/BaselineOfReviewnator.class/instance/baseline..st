baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec repository: 'bitbucket://casco/reviewnator'.
			self neoJSON: spec.
			self bootstrap: spec.
			self seaside: spec.
			self neoCSV: spec.
			self seasideDeployer: spec.
			spec
				package: 'Reviewnator-model';
				package: 'Reviewnator-importers'
					with: [ spec requires: #('NeoCSV') ];
				package: 'Reviewnator-persistence';
				package: 'Reviewnator-seaside'
					with: [ spec
						requires:
							#('Seaside3' 'Bootstrap-Core' 'Reviewnator-model' 'Reviewnator-importers' 'Reviewnator-persistence' 'Reviewnator-deployer' 'Reviewnator-PharoExtensions' 'Reviewnator-markdown') ];
				package: 'Reviewnator-deployer'
					with: [ spec requires: #('SeasideDeployer') ];
				package: 'Reviewnator-PharoExtensions';
				package: 'Reviewnator-markdown' ]