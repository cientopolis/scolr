baseline
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec repository: 'github://cientopolis/scolr'.
		self neoJSON: spec.
		self neoCSV: spec.
		self grease: spec.
		self seaside: spec.
		self bootstrap: spec.
		self petitBibtex: spec.
		self seasideMarkdown: spec.
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
						   'Scolr-PharoExtensions' 'Scolr-latex' 'Seaside-Markdown' ) ];
			package: 'Scolr-PharoExtensions' ]