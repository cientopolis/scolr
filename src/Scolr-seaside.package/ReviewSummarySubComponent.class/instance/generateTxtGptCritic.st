gpt
generateTxtGptCritic

	| assistant |
	assistant := SlrAssistant new
		             slr: self coReview;
		             yourself.
	^ String streamContents: [ :strm | 
		  strm
			  nextPutAll: assistant yourCriticsForThePlan;
			  cr;
			  cr.
		  strm
			  nextPutAll: '###Guidelines to plan a review';
			  cr;
			  cr.
		  strm nextPutAll: GptCritic guidelinesForReviews ]