versions
version20: spec
	<version: '2.0' imports: #('2.0-baseline')>
	spec
		for: #common
		do: [ spec blessing: #development.
			spec description: 'towards version 2 version'.
			spec author: 'Casco'.
			spec timestamp: '9/27/2018 8:00' ]