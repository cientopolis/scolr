serialize
serializeCoReview: aCoReView
	^ Dictionary new
		at: #title put: aCoReView title;

		at: #objective put: aCoReView objective;
		at: #researchQuestions put: aCoReView researchQuestions;
		at: #terms put: aCoReView terms;
		at: #basicSearchQuery put: aCoReView basicSearchQuery;
		at: #databases put: aCoReView databases;
		
		at: #notes put: aCoReView notes;
		at: #users put: (aCoReView users collect: [ :each | self serializeUser: each ]);
		at: #inclusionCriteria put: aCoReView inclusionCriteria;
		at: #exclusionCriteria put: aCoReView exclusionCriteria;
		at: #resultSets put: (aCoReView resultSets collect: [ :each | self serializeResultSet: each ]);
		at: #isPromiscuous put: aCoReView isPromiscuous;
		at: #comments put: (aCoReView comments collect: [ :each | self serializeComment: each ]);
		yourself