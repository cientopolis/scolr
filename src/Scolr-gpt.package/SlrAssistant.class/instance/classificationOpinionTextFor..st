private
classificationOpinionTextFor: anArticle

	^ String streamContents: [ :strm | 
		  strm
			  nextPutAll:
				  'Imagine you are aiding a team of researchers in selecting articles for a systematic literature review defined as follows:';
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Title:';
			  cr;
			  nextPutAll: (slr title ifNil: ['Not yet defined']);
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Research questions:';
			  cr;
			  nextPutAll: (slr researchQuestions ifNil: ['Not yet defined']) ;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Inclusion criteria:';
			  cr;
			  nextPutAll: (slr inclusionCriteria ifNil: ['Not yet defined']);
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Exclusion criteria:';
			  cr;
			  nextPutAll: (slr exclusionCriteria ifNil: ['Not yet defined']);
			  cr;
			  cr.

		  strm
			  nextPutAll:
				  'You are presented with an article featuring the title and abstract below:';
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Title:';
			  cr;
			  nextPutAll: anArticle title ;
			  cr.
		  strm
			  nextPutAll: 'Abstract:';
			  cr;
			  nextPutAll: anArticle abstract;
			  cr;
			  cr.

		  strm nextPutAll:
			  'Please respond with one of the following options: "Include it," "Exclude it," or "I am not sure." Additionally, provide a single sentence explaining your choice.' ]