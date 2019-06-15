running
setUp
	self
		setUpFile: #scopusHapticAgricultireTitleCaseHeaders
		extension: '.csv'.
	self
		setUpFile: #scopusOnlyMandatoryHeadersFrenchUTF8Text
		extension: '.csv'.
	self setUpFile: #chiAgricultureMissingHeaders extension: '.csv'.
	self
		setUpFile: #headersOkButWithEmptyMandatoryFields
		extension: '.csv'.
	self setUpFile: #emptyElementInHeadersRow extension: '.csv'