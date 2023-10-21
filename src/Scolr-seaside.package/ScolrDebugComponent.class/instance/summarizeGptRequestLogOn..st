rendering
summarizeGptRequestLogOn: html

	html paragraph: [ 
		html
			strong: 'Requests to GPT since last cleanup: ';
			text: SlrAssistant requestLog size printString.
		html space.
		html anchor
			callback: [ listGptRequests := true ];
			with: '[List]'.
		html space.
		html anchor
			callback: [ SlrAssistant clearRequestLog ];
			with: '[Cleanup]'.
		html space.
		html anchor
			callback: [ SlrAssistant new greetGpt ];
			with: '[Greet gpt]' ]