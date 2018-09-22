versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ spec blessing: #development.
			spec description: 'initial version'.
			spec author: 'Casco'.
			spec timestamp: '9/22/2018 13:24'.
			spec
				package: 'Reviewnator-model' with: 'Reviewnator-model-casco.1537636115';
				package: 'Reviewnator-importers' with: 'Reviewnator-importers-casco.1537636115';
				package: 'Reviewnator-persistence' with: 'Reviewnator-persistence-casco.1537636115';
				package: 'Reviewnator-seaside' with: 'Reviewnator-seaside-casco.1537636115';
				package: 'Reviewnator-deployer' with: 'Reviewnator-deployer-casco.1537636115';
				package: 'Reviewnator-PharoExtensions' with: 'Reviewnator-PharoExtensions-casco.1537636115' ]