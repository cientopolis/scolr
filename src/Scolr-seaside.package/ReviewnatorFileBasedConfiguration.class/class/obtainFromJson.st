loading
obtainFromJson
	| conf |
	self jsonConfigurationFilename asFileReference exists
		ifFalse: [ ^ nil ].
	self jsonConfigurationFilename asFileReference
		readStreamDo:
			[ :stream | conf := ReviewnatorFileBasedConfiguration fromJson: stream contents ].
	^ conf