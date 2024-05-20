requests
yourCriticsForThePlan

	| request |
	request := GptRequest apiKey: self apiKey.
	request ask: (GptCritic promptFor: slr).
	self class logRequest: request.

	request isError ifTrue: [ 
		^ self class gptNotProperlyConfiguredMessage ].

	^ request responseMessage