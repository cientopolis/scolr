hooks
materializeFromStream: aStream
	^ (FLMaterializer newDefault materializeFrom: aStream binary) root