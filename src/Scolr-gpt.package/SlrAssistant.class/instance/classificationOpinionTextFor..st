private
classificationOpinionTextFor: anArticle

	| contents |
	contents := String streamContents: [ :strm | 
		            strm
			            nextPutAll:
				            'Imagine you are aiding a team of researchers in selecting articles for a systematic literature review defined as follows:';
			            lf;
			            lf.

		            strm
			            nextPutAll: 'Title:';
			            lf;
			            nextPutAll: (slr title ifNil: [ 'Not yet defined' ]);
			            lf;
			            lf.

		            strm
			            nextPutAll: 'Research questions:';
			            lf;
			            nextPutAll:
				            (slr researchQuestions ifNil: [ 'Not yet defined' ]);
			            lf;
			            lf.

		            strm
			            nextPutAll: 'Inclusion criteria:';
			            lf;
			            nextPutAll:
				            (slr inclusionCriteria ifNil: [ 'Not yet defined' ]);
			            lf;
			            lf.

		            strm
			            nextPutAll: 'Exclusion criteria:';
			            lf;
			            nextPutAll:
				            (slr exclusionCriteria ifNil: [ 'Not yet defined' ]);
			            lf;
			            lf.

		            strm
			            nextPutAll:
				            'You are presented with an article featuring the title and abstract below:';
			            lf;
			            lf.

		            strm
			            nextPutAll: 'Title:';
			            lf;
			            nextPutAll: anArticle title;
			            lf.
		            strm
			            nextPutAll: 'Abstract:';
			            lf;
			            nextPutAll: anArticle abstract;
			            lf;
			            lf.

		            strm nextPutAll:
			            'Please respond with one of the following options: "Include it," "Exclude it," or "I am not sure." Additionally, provide a single sentence explaining your choice.' ].
	^ contents