callbacks
getSuggestedAccessCode
	" I need to save the configruation back to make sure the code is not used again."

	| suggestedAccessCode |
	suggestedAccessCode := ReviewnatorFileBasedConfiguration singleton newSuggestedAccessCode.
	ReviewnatorFileBasedConfiguration singleton save.
	^ suggestedAccessCode