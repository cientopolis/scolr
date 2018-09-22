versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ spec blessing: #release.
			spec description: 'deployed version'.
			spec author: 'Casco'.
			spec timestamp: '9/22/2018 13:24' ]