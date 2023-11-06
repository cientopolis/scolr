redering
renderMethodologyOn: stream
	stream
		nextPutAll:
			'\section{Methodology}

\subsection{Procedure}

This literature review was conducted as a collaborative effort. It was supported by the Scolr\footnote{http://scolr.lifia.ar} workflow and supporting tools. The Scolr workflow runs as follows.

\begin{description}
\item[Access] You start a new review by requesting a new access code. This access code is the handle to your open review. Anyone with the code can contribute. Participants use their email address as their signature.
\item[Plan] You and your colleagues clearly define the research questions (as good as you can), and the inclusion and exclusion criteria. These pieces of information will be available at all times during the review to guide your work.
\item[Upload] Then, using your favourite bibliographic database, you conduct the searched you consider necessary. You download the result sets of each search and upload them to your review. Result sets (ideally Bibtex files, although CSV is also accepted) need to have: title, author, year, and abstract. Scolr detects duplicates (comparing titles). Therefore you do not need to worry about a paper appearing in several sets (results of your different searches). 
\item[Filter] All participants in the review are expected to say, for each article, whether is should be included or excluded in the review. They do this by following what was stated in the plan, and by reading the abstracts (that is why you need your abstracts for). At the end of this phase, all articles are either green (everyone agrees to include them), red (everyone agrees to exclude them), or yellow (there are conflicting opinions. Before moving on to the next phase, conflicts need to be resolved. During the filtering phase, you can use tags to start shaping the review space. 
\item[Review] Only green articles reach this point. Now, the core of the review starts. For this, you need to obtain (somewhere else) the full text of all papers. Scolr is neither a bibliographic database, nor a document repository, and cannot help with obtaining the articles. Now that you have a better idea of the universe of article you found (you may have your tags to help you observe some common structure), you can define review dimensions. Review dimensions are your guides for reading the full articles. They are the aspects/questions you will try to spot in each of them. You can start with a single one (e.g. general notes), and add new ones on the go. As soon as you add a new dimension, it will become available for all papers. This means that if you go back to edit an existing review, you will find the new dimension waiting for you. You (as a team) decide when this phase is ready. It is normal to expect that each article is reviewed by at least to contributors. 
\item[Report] Scolr automatically generate a report based on the inputs from the previous phases. It includes a basic statistical analysis of the article set. It compiles all review notes. Now, you can download the report and finish it in your favourite LaTeX editor. This is where you add value. You analyse your reviews, trying to integrate them into a whole picture. 
\end{description}

\subsection{Classification criteria}

This is the place where you provide an overview of the criteria you will use to classify articles (e.g., by type of technology they use, by for of evaluation, etc). Here, you present the concrete clusters / taxonomy you will use. You have already talked about them in the Background section. 

'