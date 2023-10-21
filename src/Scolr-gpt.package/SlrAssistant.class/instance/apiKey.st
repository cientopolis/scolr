configuration
apiKey

	(OSEnvironment current at: 'OPENAI_APIKEY' ifAbsent: nil) ifNotNil: [ 
		:it | ^ it ].
	'apikey.secret' asFileReference exists ifTrue: [ 
		^ 'apikey.secret' asFileReference contents ].
	^ nil