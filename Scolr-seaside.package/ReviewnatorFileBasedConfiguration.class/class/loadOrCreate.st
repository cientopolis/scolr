loading
loadOrCreate
	| conf |
	^ self configurationFilename asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self configurationFilename 
				do: [ :aStream | 
					conf := (FLMaterializer newDefault materializeFrom: aStream binary)
						root ].
			conf ]
		ifFalse: [ self new
				save;
				yourself ]