rendering
renderTagsEditorOn: html
	html
		strong: 'Tags (space separated)';
		text: ' - Already in use: ' , (self stringFromTagSet: self coReview tagsInUse);
		break.
	html textArea
		columns: 80;
		rows: 2;
		callback: [ :value | opinionToEdit tags: (self tagsFromString: value) ];
		value: (self stringFromTagSet: (opinionToEdit tags ifNil: [ Set new ])).
	html break