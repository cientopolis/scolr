as yet unclassified
ask: messateForGpt

	| conversation |
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
	response := STON fromString: (ZnClient new
			             url: self entdpointUrl;
			             headerAt: 'Authorization'
			             put: 'Bearer ' , self apiKey;
			             entity: (ZnEntity text: (STON toJsonString: request));
			             contentType: ZnMimeType applicationJson;
			             post)