requests
greetGpt

	|   request |
	
	request := GptRequest apiKey: self apiKey.	 
	request ask: 'This is a test to check if my conversation with GPT is working'.
	self class logRequest: request.
   
	