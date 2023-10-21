setup-teardown
setUp

	apikey := self hideApikeyFile.
	self setupCorreviewAndArticle.
	assistant := SlrAssistant new.
	assistant apiKey: apikey.
	assistant slr: coReview