reading
hasCrititalMissingProperties: anArticle
	^ self columnToSelectorMap values inject: false into: [ :sub :selector | sub | (anArticle perform: selector) isEmpty ]