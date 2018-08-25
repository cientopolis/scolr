arithmetic
+ aClassificationSummary
	| res |
	res := ClassificationSummary for: user about: subject.
	res included: self included + aClassificationSummary included.
	res excluded: self excluded + aClassificationSummary excluded.
	res disagreement: self disagreement + aClassificationSummary disagreement.
	res waiting: self waiting + aClassificationSummary waiting.
	^ res