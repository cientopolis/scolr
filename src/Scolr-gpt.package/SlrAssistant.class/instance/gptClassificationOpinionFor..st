private
gptClassificationOpinionFor: anArticle

	| response requestConfig conversation |
	self apiKey isEmptyOrNil ifTrue: [ ^ nil ].
	requestConfig := self baseConfig copy.

	conversation := Array new: 1.
	conversation at: 1 put: (Dictionary new
			 at: 'role' put: 'user';
			 at: 'content' put: (self classificationOpinionTextFor: anArticle);
			 yourself).

	requestConfig at: 'messages' put: conversation asArray.
	response := STON fromString: (ZnClient new
			             url: self entdpointUrl;
			             headerAt: 'Authorization'
			             put: 'Bearer ' , self apiKey;
			             entity:
				             (ZnEntity text: (STON toJsonString: requestConfig));
			             contentType: ZnMimeType applicationJson;
			             post).
	^ response
		  at: 'error'
		  ifPresent: [ :error | 
			  self logGptError: error  .
			  self class gptReportedAnErrorMessage ]
		  ifAbsent: [ 
		  ((response at: 'choices') first at: 'message') at: 'content' ]