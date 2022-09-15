hooks
serializeToStream: aStream
	^ FLSerializer newDefault serialize: self coReview on: aStream binary