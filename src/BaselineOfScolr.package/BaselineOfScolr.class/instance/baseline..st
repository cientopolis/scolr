baseline
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec repository: 'bitbucket://cientopolis/scolr'.
		self neoJSON: spec.
		self neoCSV: spec.
		self grease: spec.
		self seaside: spec.
		self bootstrap: spec.
		self petitBibtex: spec.
		spec
			package: 'Scolr-model';
			package: 'Scolr-importers'
			with: [ spec requires: #( 'NeoCSV' 'PetitBibtex' ) ];
			package: 'Scolr-persistence';
			package: 'Scolr-latex';
			package: 'Scolr-email';
			package: 'Scolr-gpt';
			package: 'Scolr-queries';
			package: 'Scolr-seaside' with: [ 
				spec requires:
						#( 'Grease' 'Seaside3' 'Bootstrap-Core' 'Scolr-model'
						   'Scolr-importers' 'Scolr-persistence'
						   'Scolr-PharoExtensions' 'Scolr-latex' 'Scolr-markdown' ) ];
			package: 'Scolr-PharoExtensions';
			package: 'Scolr-markdown' ]