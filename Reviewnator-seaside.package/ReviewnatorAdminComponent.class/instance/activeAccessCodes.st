rendering
activeAccessCodes
	^ configuration activeAccessCodes inject: String new into: [ :sub :each | sub , ' ' , each ]