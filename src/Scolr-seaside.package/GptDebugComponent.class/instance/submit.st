callbacks
submit

	| znClient |
	znClient := ZnClient new.
	znClient
		url: self entdpointUrl;
		headerAt: 'Authorization' put: 'Bearer ' , SlrAssistant new apiKey;
		entity: (ZnEntity text: jsonPayload);
		contentType: ZnMimeType applicationJson.

	jsonResponse := STON fromString: znClient post