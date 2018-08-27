loading
load
	| conf |
	^ './reviewnator-config.fuel' asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: './reviewnator-config.fuel'
				do: [ :aStream | conf := (FLMaterializer newDefault materializeFrom: aStream binary) root ].
			conf ]
		ifFalse: [ self new ]