private
testImportFromScopusWithTitleCaseHeaders
	| importer someArticle |
	importer := CSVImporter new.
	importer
		readFrom: '/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS.csv' asFileReference
		ignoringDuplicatesIn: Set new.
	self assert: importer articles size equals: 2.
	self assert: importer importReport importErrors isEmpty.
	self assert: importer importReport importWarnings size equals: 1.
	self
		assert: importer importReport importWarnings first
		equals:
			'Some columns were ignored: source title, volume, issue, art. no., page start, page end, page count, cited by, doi, link, affiliations, authors with affiliations, author keywords, document type, access type, source, eid'.
	someArticle := importer articles detect: [ :each | each title = 'Integration of Haptics in Agricultural Robotics' ] ifNone: [ nil ].
	self assert: someArticle notNil.
	self assert: someArticle authors equals: 'Megalingam R.K., Sreekanth M.M., Sivanantham V., Kumar K.S., Ghanta S., Teja P.S., Reddy R.G.'.
	self assert: someArticle year equals: '2017'.
	self
		assert: someArticle abstract
		equals:
			'Robots can differentiate with open loop system and closed loop system robots. We face many problems when we do not have a feedback from robots. In this research paper, we are discussing all possibilities to achieve complete closed loop system for Multiple-DOF Robotic Arm, which is used in a coconut tree climbing and cutting robot by introducing a Haptic device. We are working on various sensors like tactile, vibration, force and proximity sensors for getting feedback. For monitoring the robotic arm achieved by graphical user interference software which simulates the working of the robotic arm, send the feedback of all the real time analog values which are produced by various sensors and provide real-time graphs for estimate the efficiency of the Robot. © Published under licence by IOP Publishing Ltd.'.
	self assert: someArticle documentType equals: 'Conference Paper'