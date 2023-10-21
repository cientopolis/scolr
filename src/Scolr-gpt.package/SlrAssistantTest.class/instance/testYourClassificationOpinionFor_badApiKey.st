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
		equals: SlrAssistant gptReportedAnErrorMessage.
	self assert: opinion undecided.
	self
		assert: (SlrAssistant gptErrorFileName asFileReference contents
		includesSubstring: 'Incorrect API key provided')