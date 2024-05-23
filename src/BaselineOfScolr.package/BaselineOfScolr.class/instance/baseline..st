baseline
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec repository: 'bitbucket://casco/scolr'.
		self neoJSON: spec.
		self neoCSV: spec.
		self grease: spec.
		self seaside: spec.
		self bootstrap: spec.
		self seasideDeployer: spec.
		self petitBibtex: spec.
		spec
			package: 'Scolr-model';
			package: 'Scolr-importers'
			with: [ spec requires: #( 'NeoCSV' 'PetitBibtex' ) ];
			package: 'Scolr-persistence';
			package: 'Scolr-latex';
			package: 'Scolr-email';
			package: 'Scolr-gpt';
			package: 'Scolr-seaside' with: [ 
				spec requires:
						#( 'Grease' 'Seaside3' 'Bootstrap-Core' 'Scolr-model'
						   'Scolr-importers' 'Scolr-persistence' 'Scolr-deployer'
						   'Scolr-PharoExtensions' 'Scolr-latex' 'Scolr-markdown' 'Scolr-queries') ];
			package: 'Scolr-deployer'
			with: [ spec requires: #( 'SeasideDeployer' ) ];
			package: 'Scolr-PharoExtensions';
			package: 'Scolr-markdown' ]