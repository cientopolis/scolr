arithmetic
+ aClassificationSummary
	| res |
	res := ClassificationSummary for: user about: subject.
	res included: self included + aClassificationSummary included.
	res excluded: self excluded + aClassificationSummary excluded.
	res undecided: self undecided + aClassificationSummary undecided.
	res disagreement: self disagreement + aClassificationSummary disagreement.
	res waiting: self waiting + aClassificationSummary waiting.
	^ res