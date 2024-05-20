constants
promptFor: aCoReview

	| base |
	base := 'You are assisting a team of researchers in the process of  planning a systematic literature review.

They have been told to focus in four sections of the plan: objective, research questions, inclusion criteria, exclusion criteria.  They have been given the following guidelines for each section. 

 - guidelines  for planning your review - 
',
  self guidelinesForReviews
,'
------------------
Next, I will give you their plan. In response to that, I ask you to provide an overall evaluation, section by section  (excelent; good; needs improvement). Only in case you consider that it needs improvement, provide concrete suggestions. 

This is the plan they presented: 
'.

	^ String streamContents: [ :strm | 
		  strm
			  nextPutAll: base;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Objective:';
			  cr;
			  nextPutAll: aCoReview objective;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Research questions:';
			  cr;
			  nextPutAll: aCoReview researchQuestions;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Inclusion criteria';
			  cr;
			  nextPutAll: aCoReview inclusionCriteria;
			  cr;
			  cr.

		  strm
			  nextPutAll: 'Exclusion criteria';
			  cr;
			  nextPutAll: aCoReview exclusionCriteria;
			  cr;
			  cr ]