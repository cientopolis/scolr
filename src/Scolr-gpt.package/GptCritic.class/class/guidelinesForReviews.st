constants
guidelinesForReviews

	^ String streamContents: [ :strm | 
		  strm
			  nextPutAll: 'Objective: ';
			  nextPutAll: self instructionsForObjective;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Research Questions: ';
			  nextPutAll: self instructionsForResearchQuestions;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Inclusion Criteria: ';
			  nextPutAll: self instructionsForInclusionCriteria;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Exclusion Criteria ';
			  nextPutAll: self instructionsForExclusionCriteria;
			  cr;
			  cr ]