loading
obtainFromFuel
	| conf |
	self fuelConfigurationFilename asFileReference exists
		ifFalse: [ ^ nil ].
	FileStream
		oldFileNamed: self fuelConfigurationFilename
		do: [ :stream | 
			conf := (FLMaterializer newDefault materializeFrom: stream binary)
				root ].
	^ conf