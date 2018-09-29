running
tearDown
	self tearDownFile: #scopusHapticAgricultireTitleCaseHeaders.
	self tearDownFile: #scopusOnlyMandatoryHeadersFrenchUTF8Text.
	self tearDownFile: #chiAgricultureMissingHeaders.
	self tearDownFile: #headersOkButWithEmptyMandatoryFields.
	self tearDownFile: #emptyElementInHeadersRow