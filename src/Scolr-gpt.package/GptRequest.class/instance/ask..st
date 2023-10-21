api
ask: messateForGpt

	| conversation znClient |
	dateAndTime := DateAndTime now.

	self apiKey isEmptyOrNil ifTrue: [ 
		response := Dictionary new
			            at: 'error' put: (Dictionary new
					             at: 'message'
					             put:
						             'GPT is not properly configured - apikey is missing';
					             yourself);
			            yourself.
		^ nil ].
	request := self baseConfig copy.

	conversation := Array new: 1.
	conversation at: 1 put: (Dictionary new
			 at: 'role' put: 'user';
			 at: 'content' put: messateForGpt;
			 yourself).

	request at: 'messages' put: conversation asArray.

	znClient := ZnClient new.
	znClient
		url: self entdpointUrl;
		headerAt: 'Authorization' put: 'Bearer ' , self apiKey;
		entity: (ZnEntity text: (STON toJsonStringPretty: request));
		contentType: ZnMimeType applicationJson.
	
	znZincEntityString := znClient request entity string.	

	response := STON fromString: znClient post