baselines
baseline20: spec
	<version: '2.0-baseline'>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'bitbucket://casco/reviewnator'.
			spec
			project: 'NeoJSON'
					with: [ spec
						className: 'ConfigurationOfNeoJSON';
						versionString: #stable;
						repository: 'http://mc.stfx.eu/Neo' ];
				project: 'Bootstrap'
					with: [ spec
						className: 'ConfigurationOfBootstrap';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/Bootstrap' ];
				project: 'Seaside3'
					with: [ spec
						className: 'ConfigurationOfSeaside3';
						versionString: #stable;
						repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
				configuration: 'NeoCSV'
					with: [ spec
						versionString: '15';
						loads: #();
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/NeoCSV' ];
				project: 'SeasideDeployer'
					with: [ spec
						className: 'ConfigurationOfSeasideDeployer';
						repository: 'bitbucket://casco/pharo-utilities';
						versionString: '1.0' ].
			spec
				package: 'Reviewnator-model';
				package: 'Reviewnator-importers' with: [ spec requires: #('NeoCSV') ];
				package: 'Reviewnator-persistence';
				package: 'Reviewnator-seaside'
					with: [ spec
						requires:
							#('Seaside3' 'Bootstrap' 'Reviewnator-model' 'Reviewnator-importers' 'Reviewnator-persistence' 'Reviewnator-deployer' 'Reviewnator-PharoExtensions' 'Reviewnator-Markdown') ];
				package: 'Reviewnator-deployer' with: [ spec requires: #('SeasideDeployer') ];
				package: 'Reviewnator-PharoExtensions';
				package: 'Reviewnator-Markdown' ]