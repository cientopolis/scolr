Reads files from a CSV - uses the header line as a list of getters
Instanciates Article and sends it setter messages build from the getters list.

Instance Variables:
      resultSet 		the collection where articles will be saved
	getters	Collection of string - the getters 

Example:

| importer | 
importer := ScopusImporter forFile: '/Users/alejandrofernandez/Google Drive/Projects/Cientificos Ciudadanos UNLP/DifusioÃÅn/Review of Citizen Science Platforms/busquedas de scopus/citizen-science-framework-scopus-oo.csv'.
importer read.
importer resultSet inspect

