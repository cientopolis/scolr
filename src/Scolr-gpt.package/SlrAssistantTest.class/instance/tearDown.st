setup-teardown
tearDown

	| apikeyFile |
	assistant := SlrAssistant new.
	apikeyFile := (SlrAssistant apikeyFilename , '.test-backup')
		              asFileReference.
	apikeyFile exists ifFalse: [ 
		self fail:
			'could not find the backup of the apikeyfile I created in setup ' ].
	apikeyFile renameTo: SlrAssistant apikeyFilename.

"
	apikeyInEnvironmentVar ifNotNil: [ 
		OSEnvironment current at: 'OPENAI_APIKEY' put: apikey ]"