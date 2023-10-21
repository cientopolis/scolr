testing
testYourClassificationOpinionFor_badApiKey

	| opinion assistantWithBadApiKey |
	assistantWithBadApiKey := SlrAssistant new.
	assistantWithBadApiKey apiKey: 'thiskeyshouldnotwork'.
	assistantWithBadApiKey slr: coReview.
	opinion := assistantWithBadApiKey yourClassificationOpinionFor:
		           article.
	self
		assert: opinion comments
		equals: SlrAssistant gptNotProperlyConfiguredMessage .
	self assert: opinion undecided.