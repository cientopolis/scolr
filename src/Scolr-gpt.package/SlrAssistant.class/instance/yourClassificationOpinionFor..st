requests
yourClassificationOpinionFor: anArticle

	|  opinion request |
	
	request := GptRequest apiKey: self apiKey.	 
	request ask: (self classificationOpinionTextFor:  anArticle).
	self class logRequest: request.
   
	request isError ifTrue: [ 
		^ Classification new
			  comments: self class gptNotProperlyConfiguredMessage;
			  forget;
			  yourself ].

   
	opinion := Classification new.
	opinion comments: request responseMessage.
	
	(opinion comments asLowercase includesSubstring: 'include') ifTrue: [ 
		^ opinion
			  includeIt;
			  yourself ].

	(opinion comments asLowercase includesSubstring: 'exclude') ifTrue: [ 
		^ opinion
			  excludeIt;
			  yourself ].

	^ opinion
		  forget;
		  yourself