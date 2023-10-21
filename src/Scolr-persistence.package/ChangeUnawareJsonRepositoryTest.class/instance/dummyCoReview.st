private
dummyCoReview
	| resultSetOne resultSetTwo articleOne articleTwo articleThree coReview userOne userTwo reviewOne classificationOne bibtexEntryForArticleThree |
	coReview := CollaborativeReview new
		title: 'This is the title';
		objective: 'This is the objective';
		researchQuestions: 'These are the research questions';
		terms: 'These are the search terms';
		basicSearchQuery: 'This is the search query';
		databases: 'These are the databases';
		notes: 'These are the notes';
		inclusionCriteria: 'This is the inclusion criteria';
		exclusionCriteria: 'This is the exclusion criteria';
		yourself.
	userOne := coReview newOrExistingUserNamed: 'one@here.test'.
	userOne lastLoginTimeStamp: DateAndTime now.
	userTwo := coReview newOrExistingUserNamed: 'two@here.test'.
	userTwo lastLoginTimeStamp: DateAndTime now.
	resultSetOne := ResultSet new
		searchString: 'Search string one';
		database: 'Database one';
		comments: 'Comments one';
		duplicateCount: 10;
		yourself.
	resultSetTwo := ResultSet new
		searchString: 'Search string two';
		database: 'Database two';
		comments: 'Comments two';
		yourself.
	articleOne := Article
		title: 'Título uno'
		authors: 'Autores uno'
		year: 'Año uno'
		abstract: 'Abstract uno'
		documentType: 'Tipo uno'.
	articleTwo := Article
		title: 'Título dos'
		authors: 'Autores dos'
		year: 'Año dos'
		abstract: 'Abstract dos'
		documentType: 'Tipo dos'.
	resultSetOne
		addArticle: articleOne;
		addArticle: articleTwo.
	bibtexEntryForArticleThree := BibtexEntry
		type: 'Tipo tres'
		citationKey: 'ignored'
		tags:
			(Set
				with: (BibtexTag name: 'title' value: 'Título tres')
				with: (BibtexTag name: 'year' value: 'Año tres')
				with: (BibtexTag name: 'author' value: 'Autores tres')
				with: (BibtexTag name: 'abstract' value: 'Abstract tres')).
	articleThree := Article fromBibtexEntry: bibtexEntryForArticleThree.
	resultSetTwo addArticle: articleThree.
	reviewOne := Review new
		author: userOne;
		date: Date today;
		comment: 'comment one' inDimension: 'dimension one';
		comment: 'comment two' inDimension: 'dimension two';
		yourself.
	articleOne addReview: reviewOne.
	tagAssignmentOne := (TagAssignment tags: {'one' . 'two'})
		author: userOne;
		date: Date today;
		yourself.
	articleOne addTagAssignment: tagAssignmentOne.
	classificationOne := Classification new
		author: userOne;
		date: Date today;
		comments: 'comment one';
		excludeIt;
		yourself.
	articleTwo addClassification: classificationOne.
	tagAssignmentTwo := (TagAssignment tags: {'one' . 'three'})
		author: userOne;
		date: Date today;
		yourself.
	articleTwo addTagAssignment: tagAssignmentTwo.
	coReview
		addResultSet: resultSetOne;
		addResultSet: resultSetTwo.
	coReview
		addComment:
			(Comment new
				authorEmail: 'a@b.c';
				offeredAccessCode: 'code';
				text: 'my comment';
				yourself).
	^ coReview