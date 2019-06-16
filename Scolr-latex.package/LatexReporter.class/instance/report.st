accessing
report
	| stream |
	stream := String new writeStream.
	self renderHeaderOn: stream.
	self renderReviewGoalOn: stream.
	self renderMethodologySectionOn: stream.
	^ stream contents