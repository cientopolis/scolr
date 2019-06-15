elements
blockquote: aBlockOrString
	^ current addElement: (MarkdownBlockquote with: aBlockOrString)