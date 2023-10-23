private-classification
classificationOpinionTextFor: anArticle

	| contents |
	contents := String streamContents: [ :strm | 
		            strm
			            nextPutAll:
				            'Imagine you are assisting a team of researchers in the process of selecting articles for a systematic literature review. The review goals and inclusion/exclusion criteria have been specified as follows:';
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
				            'You have an article with the following title and abstract:';
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

		            strm nextPutAll: self classificationOpinionTaskStatement ].
	^ contents