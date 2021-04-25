save
asJson
	^ String
		streamContents: [ :stream | 
			(NeoJSONWriter on: stream)
				prettyPrint: true;
				for: SharedQueue
					customDo: [ :mapping | mapping encoder: #contents ];
				mapInstVarsFor: ReviewnatorFileBasedConfiguration;
				mappingFor: ReviewnatorFileBasedConfiguration;
				mapInstVarsFor: ReviewnatorAccessCredential;
				for: Date customDo: [ :mapping | mapping encoder: #printString ];
				nextPut: self ]