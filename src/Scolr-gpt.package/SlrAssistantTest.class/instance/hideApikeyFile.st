setup-teardown
hideApikeyFile

	| apikeyFile |
	assistant := SlrAssistant new.
	apikeyFile := SlrAssistant apikeyFilename asFileReference.
	apikeyFile exists ifFalse: [ 
		self fail: 'make sure your apikey is in ' , apikeyFile pathString ].
	apikeyFile renameTo: SlrAssistant apikeyFilename , '.test-backup'.
	^ apikeyFile contents

	"
	apikeyInEnvironmentVar := OSEnvironment current
		                          at: 'OPENAI_APIKEY'
		                          ifAbsent: nil.
	OSEnvironment current removeEnvironmentVariable: 'OPENAI_APIKEY'
"