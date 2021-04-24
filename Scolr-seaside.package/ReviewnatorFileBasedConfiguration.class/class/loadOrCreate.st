loading
loadOrCreate
	| conf |
	^ self fuelConfigurationFilename asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self fuelConfigurationFilename 
				do: [ :aStream | 
					conf := (FLMaterializer newDefault materializeFrom: aStream binary)
						root ].
			conf ]
		ifFalse: [ self new
				save;
				yourself ]