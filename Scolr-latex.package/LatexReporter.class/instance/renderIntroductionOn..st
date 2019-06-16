redering
renderIntroductionOn: stream
	stream
		nextPutAll:
			'\section{Introduction}

Write down some paragraphs introducing the domain of your review. Try to answer the following questions:

\begin{itemize}
  \item define your topic and provide an appropriate context for reviewing the literature
  \item establish your reasons – i.e. point of view – for
reviewing the literature;
  \item explain the organisation – i.e. sequence – of the review;
state the scope of the review – i.e. what is included and what isn’t included.
\end{itemize}

\subsection{Research questions}

State the concrete questions you were/are trying to answer with this review.

These were the notes that guided your review (with Scolr).

';
		nextPutAll: coReview notes