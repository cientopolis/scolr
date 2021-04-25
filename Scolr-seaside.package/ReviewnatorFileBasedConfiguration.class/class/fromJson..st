reading
fromJson: aJsonString
	^ (NeoJSONReader on: aJsonString readStream)
		for: Date
			customDo: [ :mapping | mapping decoder: [ :string | Date fromString: string ] ];
		mapInstVarsFor: ReviewnatorAccessCredential;
		for: ReviewnatorAccessCredential
			do:
				[ :mapping | (mapping mapInstVar: #modificationDate) valueSchema: Date ];
		for: #OrderedCollectionOfReviewnatorAccessCredential
			customDo: [ :mapping | 
			mapping
				listOfType: OrderedCollection
				andElementSchema: ReviewnatorAccessCredential ];
		for: #SharedQueueOfString
			customDo: [ :mapping | 
			mapping
				decoder: [ :collection | 
					SharedQueue new
						nextPutAll: collection;
						yourself ] ];
		for: #SetOfString
			customDo: [ :mapping | mapping decoder: [ :collection | collection asSet ] ];
		mapInstVarsFor: ReviewnatorFileBasedConfiguration;
		for: ReviewnatorFileBasedConfiguration
			do: [ :mapping | 
			(mapping mapInstVar: #usersThatAcceptedTermsAndConditions)
				valueSchema: #SetOfString.
			(mapping mapInstVar: #activeAccessCodes) valueSchema: #SetOfString.
			(mapping mapInstVar: #accessCredentials)
				valueSchema: #OrderedCollectionOfReviewnatorAccessCredential.
			(mapping mapInstVar: #suggestedAccessCodes)
				valueSchema: #SharedQueueOfString ];
		nextAs: ReviewnatorFileBasedConfiguration