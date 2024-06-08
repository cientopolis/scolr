private
handleError: anException
	self sendFailFor: anException.
	^ super handleError: anException