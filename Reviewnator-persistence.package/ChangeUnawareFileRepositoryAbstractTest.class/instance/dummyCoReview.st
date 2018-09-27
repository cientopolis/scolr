private
dummyCoReview
	| resultSetOne resultSetTwo articleOne articleTwo articleThree coReview userOne userTwo reviewOne classificationOne |
	coReview := CollaborativeReview new
		title: 'This is the title';
		notes: 'These are the notes';
		inclusionCriteria: 'This is the inclusion criteria';
		exclusionCriteria: 'This is the exclusion criteria';
		yourself.
	userOne := coReview newOrExistingUserNamed: 'one@here.test'.
	userTwo := coReview newOrExistingUserNamed: 'two@here.test'.
	resultSetOne := ResultSet new
		searchString: 'Search string one';
		database: 'Database one';
		comments: 'Comments one';
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
	articleThree := Article
		title: 'Título tres'
		authors: 'Autores tres'
		year: 'Año tres'
		abstract: 'Abstract tres'
		documentType: 'Tipo tres'.
	resultSetTwo addArticle: articleThree.
	reviewOne := Review new
		author: userOne;
		date: Date today;
		tags: {'one' . 'two'};
		comment: 'comment one' inDimension: 'dimension one';
		comment: 'comment two' inDimension: 'dimension two';
		yourself.
	articleOne addReview: reviewOne.
	classificationOne := Classification new
		author: userOne;
		date: Date today;
		tags: {'one' . 'two'};
		comments: 'comment one';
		excludeIt;
		yourself.
	articleTwo addClassification: classificationOne.
	coReview
		addResultSet: resultSetOne;
		addResultSet: resultSetTwo.
	^ coReview