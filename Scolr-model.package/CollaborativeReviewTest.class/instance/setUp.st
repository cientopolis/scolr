running
setUp
	aCoReview := CollaborativeReview new.
	aResultSet := ResultSet new.
	aResultSet comments: 'a Result Set'.
	articleOne := Article
		title: 'uno'
		authors: ''
		year: ''
		abstract: ''
		documentType: ''.
	articleTwo := Article
		title: 'dos'
		authors: ''
		year: ''
		abstract: ''
		documentType: ''.
	articleThree := Article
		title: 'tres'
		authors: ''
		year: ''
		abstract: ''
		documentType: ''.
	aResultSet
		addArticle: articleOne;
		addArticle: articleTwo.
	anotherResultSet := ResultSet new.
	anotherResultSet
		comments: 'another Result Set';
		addArticle: articleThree.
	aCoReview
		addResultSet: aResultSet;
		addResultSet: anotherResultSet