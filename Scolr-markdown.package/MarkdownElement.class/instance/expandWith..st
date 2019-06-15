expanding
expandWith: aMarkdownCanvas
	aMarkdownCanvas current: self.
	blockOrString value.
	elements do: [ :each | each expandWith: aMarkdownCanvas ]