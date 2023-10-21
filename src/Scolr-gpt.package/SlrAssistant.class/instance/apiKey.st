configuration
apiKey
"There are some issues with OSEnvironment and windows "
	"	(OSEnvironment current at: 'OPENAI_APIKEY' ifAbsent: nil) ifNotNil: [ 
		:it | ^ it ].
	"
	
	apiKey ifNotNil: [ :it | ^it ].

	self class apikeyFilename asFileReference exists ifTrue: [ 
		^ self class apikeyFilename asFileReference contents ].
	
	^ nil