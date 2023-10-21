accessing
renderMainContentOn: html

  html paragraph: gptRequest dateAndTime printString.
  html paragraph: gptRequest apiKey .
  html preformatted: (STON toJsonStringPretty: gptRequest request).
  html preformatted: (STON toJsonStringPretty: gptRequest response)