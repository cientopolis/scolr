accessing
renderProcessSummaryOn: stream.
	stream
		nextPutAll:
			'\section{Introduction}
\subsection{Goal of this review}
';
		nextPutAll: coReview notes;
		nextPutAll: '\' withCRs