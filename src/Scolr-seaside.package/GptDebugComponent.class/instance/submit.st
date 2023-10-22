callbacks
submit

	| znClient result |
	znClient := ZnClient new.
	
	znClient
		url: self endpointUrl;
		headerAt: 'Authorization' put: 'Bearer ' , SlrAssistant new apiKey;
		entity: (ZnEntity text: jsonPayload);
		contentType: ZnMimeType applicationJson.

	result := znClient post.

	jsonResponse := [ STON fromString: result ]
		                on: Error
		                do: [ result ]