opinions
hasClassificationAgreement
	^ (classifications collect: [ :each | each decision ] as: Set) size = 1