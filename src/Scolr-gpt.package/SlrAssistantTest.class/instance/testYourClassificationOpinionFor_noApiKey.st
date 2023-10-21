testing
testYourClassificationOpinionFor_noApiKey

	| opinion assistantWithNoApiKey |
	assistantWithNoApiKey := SlrAssistant new.
	assistantWithNoApiKey slr: coReview.
	opinion := assistantWithNoApiKey yourClassificationOpinionFor:
		           article.
	self
		assert: opinion comments
		equals: SlrAssistant gptNotProperlyConfiguredMessage.
		
	