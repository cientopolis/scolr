redering
renderEmbeddedBibliographyFileOn: stream
	stream
		nextPutAll: '%% The following lines are used, with the filecontents package, 
%% to generate the separated bibliography.bib file
%% -----------------------------------------------------

'.
	stream
		nextPutAll: '\begin{filecontents}{\bibliography.bib}';
		cr.
	bibtexEntries
		do: [ :each | 
			each printOn: stream.
			stream
				cr;
				cr ].
	stream
		nextPutAll: '\end{filecontents}';
		cr