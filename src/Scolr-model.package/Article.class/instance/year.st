accessing
year

	^ year ifEmpty: [ self yearFromBibtextDateOrNil ifNil: [ '' ] ]