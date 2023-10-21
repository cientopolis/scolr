setup-teardown
setUp

	SlrAssistant gptErrorFileName asFileReference ifExists: [ :it | 
		it delete ].
	apikey := self hideApikeyFile.
	self setupCorreviewAndArticle.
	assistant := SlrAssistant new.
	assistant apiKey: apikey.
	assistant slr: coReview