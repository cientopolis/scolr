rendering
renderTagsEditorOn: html
	html
		label: 'Tags';
		break.
	html textArea
		columns: 80;
		rows: 2;
		callback: [ :value | opinionToEdit tags: (self tagsFromString: value) ];
		value: (self stringFromTagSet: (opinionToEdit tags ifNil: [ Set new ])).
	html
		break;
		small: [ html
				strong: 'Tags in use: ';
				text: (self stringFromTagSet: self coReview tagsInUse);
				break;
				text:
					'Use space to separate tags. Use camel case for tags with multiple words (for example, ''evaluation criteria'' becomes ''EvaluationCriteria'')';
				break;
				break ]