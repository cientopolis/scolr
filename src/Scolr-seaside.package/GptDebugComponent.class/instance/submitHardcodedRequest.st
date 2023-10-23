callbacks
submitHardcodedRequest

	| znClient result payload |
	
	jsonResponse := ''.
	
	znClient := ZnClient new.

	payload := '{"model": "gpt-3.5-turbo", "messages": [{"role": "user","content": "hola Manola, soy Manolo"}],"temperature": 1,"max_tokens": 256,"top_p": 1,"frequency_penalty": 0,"presence_penalty": 0}'.

	znClient
		url: 'https://api.openai.com/v1/chat/completions';
		headerAt: 'Authorization' put: 'Bearer ' , SlrAssistant new apiKey;
		entity: (ZnEntity text: payload);
		contentType: ZnMimeType applicationJson.

	result := znClient post.

	jsonResponse := result. 
	
