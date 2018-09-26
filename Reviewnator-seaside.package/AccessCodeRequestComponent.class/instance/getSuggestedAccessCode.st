callbacks
getSuggestedAccessCode
	" I need to save the configruation back to make sure the code is not used again."

	| suggestedAccessCode cachedConfiguration |
	cachedConfiguration := ReviewnatorFileBasedConfiguration load.
	suggestedAccessCode := cachedConfiguration newSuggestedAccessCode.
	cachedConfiguration save.
	^ suggestedAccessCode