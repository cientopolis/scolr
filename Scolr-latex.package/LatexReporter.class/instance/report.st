mustache
report
	^ '\documentclass[runningheads]{llncs}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{pgfplots}

\begin{document}
\title{' , coReview title
		,
			'}
\author{First Author \and Second Author \and Third Author}
\maketitle 

\begin{abstract}
The abstract should briefly summarize the research questions and main findings of this review in 15--250 words.

\keywords{First keyword  \and Second keyword \and Another keyword.}
\end{abstract}
%
\section{Introduction}

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

' , coReview notes
		,
			'

\section{Background}

In this section you provide more background about your research domain. If the reader needs to know something in order to understand your review, this is the moment.

This is also the place where you introduce the various dimensions you will later use to analyze the articles. These can be the questions you what to answer or any other crosscutting aspect you plan to observe in articles trying to identify patterns. 

\section{Methodology}

\subsection{Procedure}

This literature review was conducted as a collaborative effort. It was supported by the Scolr\footnote{http://scolr.cientopolis.org} workflow and supporting tools. The Scolr workflow runs as follows.

\begin{description}
\item[Access] You start a new review by requesting a new access code. This access code is the handle to your open review. Anyone with the code can contribute. Participants use their email address as their signature.
\item[Plan] You and your colleagues clearly define the research questions (as good as you can), and the inclusion and exclusion criteria. These pieces of information will be available at all times during the review to guide your work.
\item[Upload] Then, using your favourite bibliographic database, you conduct the searched you consider necessary. You download the result sets of each search and upload them to your review. Result sets (ideally Bibtex files, although CSV is also accepted) need to have: title, author, year, and abstract. Scolr detects duplicates (comparing titles). Therefore you do not need to worry about a paper appearing in several sets (results of your different searches). 
\item[Classify] All participants in the review are expected to say, for each article, whether is should be included or excluded in the review. They do this by following what was stated in the plan, and by reading the abstracts (that is why you need your abstracts for). At the end of this phase, all articles are either green (everyone agrees to include them), red (everyone agrees to exclude them), or yellow (there are conflicting opinions. Before moving on to the next phase, conflicts need to be resolved. During the classification phase, you can use tags to start shaping the review space. 
\item[Review] Only green articles reach this point. Now, the core of the review starts. For this, you need to obtain (somewhere else) the full text of all papers. Scolr is neither a bibliographic database, nor a document repository, and cannot help with obtaining the articles. Now that you have a better idea of the universe of article you found (you may have your tags to help you observe some common structure), you can define review dimensions. Review dimensions are your guides for reading the full articles. They are the aspects/questions you will try to spot in each of them. You can start with a single one (e.g. general notes), and add new ones on the go. As soon as you add a new dimension, it will become available for all papers. This means that if you go back to edit an existing review, you will find the new dimension waiting for you. You (as a team) decide when this phase is ready. It is normal to expect that each article is reviewed by at least to contributors. 
\item[Report] Scolr automatically generate a report based on the inputs from the previous phases. It includes a basic statistical analysis of the article set. It compiles all review notes. Now, you can download the report and finish it in your favourite LaTeX editor. This is where you add value. You analyse your reviews, trying to integrate them into a whole picture. 
\end{description}

\subsection{Classification criteria}

This is the place where you provide an overview of the criteria you will use to classify articles (e.g., by type of technology they use, by for of evaluation, etc). Here, you present the concrete clusters / taxonomy you will use. You have already talked about them in the Background section. 

\section{Analysis}

\subsection{Search results}

Table \ref{tab:searches} provides an overview of the search queries that were conducted. The source column indicates the bibliographic database used. The ``Articles'' column indicates the number of new article obtained for each source and search string combination. Searches were conducted from the first (top) to the last (bottom). Only new (non-duplicate) articles were included. The search process yielded '
		, coReview allArticles size printString
		,
			' articles in total.

\begin{table}[]
    \centering
    \begin{tabularx}{\textwidth}{ |l|X|c| }
        \hline
        \textbf{Source} & \textbf{Search string} & \textbf{Articles} \\
        \hline
' , self resultSetsTableLines
		,
			'
        \hline
    \end{tabularx}
    \caption{Search results}
    \label{tab:searches}
\end{table}

\subsection{Remarks about the classification phase}

During the classification phase, all articles where evaluated against the inclusion and exclusion criteria. In summary, each article was as either "to be included" or "to be exclude" by [[average-classifiers]] contributors in average. Of the original [[article-count]] articles, [[included-number]] reached agreement for inclusion. These articles passed on to the review phase.

Figure \ref{fig:byYear} offers a comparison and overview of included and excluded articles by year of publication.

\begin{figure}
\label{fig:byYear}
\caption{Included vs. excluded publications by year}
\begin{center}
\begin{tikzpicture}
\begin{axis}[
	x tick label 
	style={/pgf/number format/1000 sep=},
	ylabel=Articles,
	enlargelimits=0.05,
	legend style={at={(0.5,-0.1)},
	anchor=north,legend columns=-1},
	ybar interval=0.7,
]
\addplot 
	coordinates {(2012,408184) (2011,408348)
		 (2010,414870) (2009,412156)};
\addplot 
	coordinates {(2012,388950) (2011,393007) 
		(2010,398449) (2009,395972)};
\legend{Included, Excluded}
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}

\subsection{Remarks about the review phase}

Each article that passed on to the review phase (i.e., was included in the review) was reviews by [[average-reviewers]] in average. 

Articles were analyzed according to the following dimensions:

\begin{description}
\item[Dimension 1] Please explain what this dimension is about, how it was used to analyze articles. 
\item[Dimension21] Please explain what this dimension is about, how it was used to analyze articles. 
\end{description}

Tags were used to organize articles into the taxonomies of interest for this review. 

\begin{figure}
\label{fig:byYear}
\caption{Taxonomy of articles}
\begin{center}
\begin{tikzpicture}
\begin{axis}
 [
    title = Articles per tag,
    xbar,
    y axis line style = { opacity = 0 },
    axis x line       = none,
    tickwidth         = 0pt,
    enlarge y limits  = 0.2,
    enlarge x limits  = 0.02,
    nodes near coords,
    symbolic y coords = {Tag 1,Tag 2,Tag 3,Tag 4,Tag 5,Tag 6,Tag 7,Tag 8, Tag 9,Tag very long 10},
  ]
\addplot 
	coordinates {(10,Tag 1) (7,Tag 2) (7,Tag 3) (1,Tag 4) (5,Tag 5)
	(3,Tag 6) (10,Tag 7) (6,Tag 8) (4,Tag 9) (3,Tag very long 10)};
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}

\section{Review notes}

These are the individual notes for each review dimention, and rach article. You can remove this section after you have finished the report. 

\subsection{Notes regarding dimension: [[dimension-name]]}

\subsubsection{[[article-title]]}

According to reviewer [[reviewer-name], regarding dimension [[dimension-name]], this article:

[[review-for-article-and-dimension]]

\bibliographystyle{splncs04}

\begin{thebibliography}{8}
\bibitem{ref_article1}
Author, F.: Article title. Journal \textbf{2}(5), 99--110 (2016)

\bibitem{ref_lncs1}
Author, F., Author, S.: Title of a proceedings paper. In: Editor,
F., Editor, S. (eds.) CONFERENCE 2016, LNCS, vol. 9999, pp. 1--13.
Springer, Heidelberg (2016). \doi{10.10007/1234567890}

\bibitem{ref_book1}
Author, F., Author, S., Author, T.: Book title. 2nd edn. Publisher,
Location (1999)

\bibitem{ref_proc1}
Author, A.-B.: Contribution title. In: 9th International Proceedings
on Proceedings, pp. 1--2. Publisher, Location (2010)

\bibitem{ref_url1}
LNCS Homepage, \url{http://www.springer.com/lncs}. Last accessed 4
Oct 2017
\end{thebibliography}
\end{document}

	'