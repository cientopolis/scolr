callbacks
askGpt

	| assistant gptsOpinion |
	assistant := SlrAssistant new
		             slr: self coReview;
		             yourself.
	gptsOpinion := assistant yourClassificationOpinionFor: article.
	comments := gptsOpinion comments.
	opinionToEdit decision: gptsOpinion decision