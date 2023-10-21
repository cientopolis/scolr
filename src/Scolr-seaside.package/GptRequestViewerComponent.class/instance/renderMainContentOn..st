accessing
renderMainContentOn: html

	html paragraph: 'html paragraph: gptRequest dateAndTime printString'.
	html paragraph: gptRequest dateAndTime printString.

	html paragraph: 'html paragraph: gptRequest apiKey.'.
	html paragraph: gptRequest apiKey.

	html paragraph:
		'html preformatted: (STON toJsonStringPretty: gptRequest request).'.
	html preformatted: (STON toJsonStringPretty: gptRequest request).

	html paragraph: 'html preformatted: gptRequest znZincEntityString.'.
	html preformatted: gptRequest znZincEntityString.

	html paragraph:
		'html preformatted: (STON toJsonStringPretty: gptRequest response).'.
	html preformatted: (STON toJsonStringPretty: gptRequest response)