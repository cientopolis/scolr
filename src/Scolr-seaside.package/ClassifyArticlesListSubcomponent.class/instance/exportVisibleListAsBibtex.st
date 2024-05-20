callback
exportVisibleListAsBibtex

	| content |
	content := String streamContents: [ :strm | 
		           (self sort: self filteredArticles) do: [ :each | 
			           each asBibtexEntry printOn: strm.
			           strm cr ] ].
	self requestContext respond: [ :response | 
		response
			contentType: WAMimeType textHtml;
			document: content;
			attachmentWithFileName: 'selected-references.bib' ]