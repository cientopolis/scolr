running
tearDown
	self
		tearDownFile: #scopusHapticAgricultireTitleCaseHeaders
		extension: '.csv'.
	self
		tearDownFile: #scopusOnlyMandatoryHeadersFrenchUTF8Text
		extension: '.csv'.
	self tearDownFile: #chiAgricultureMissingHeaders extension: '.csv'.
	self
		tearDownFile: #headersOkButWithEmptyMandatoryFields
		extension: '.csv'.
	self tearDownFile: #emptyElementInHeadersRow extension: '.csv'