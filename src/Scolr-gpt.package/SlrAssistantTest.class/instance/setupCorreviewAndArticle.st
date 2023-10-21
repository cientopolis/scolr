setup-teardown
setupCorreviewAndArticle
   
 coReview := CollaborativeReview new.
  coReview notes: '#Objective
This systematic literature review compiles, organizes, and discusses the state of the art regarding the development of wrist-worn, haptic feedback devices.

#Research questions
*What are the key criteria used to describe and compare wrist-worn, haptic devices?
*What types (and form factors) of wrist-worn devices are reported?
*What types of haptic feedback are used in wrist-worn devices?
*What technologies (e.g., types and number of actuators) and methods are used to implement haptic feedback in wrist-worn devices?
*What methods and criteria are employed by researchers to quantify and analyze the sensitivity, definition or granularity of haptic stimuli in wrist-worn devices?
*How do researchers define and analyze the variety/quantity/range/spectrum of the haptic stimuli?
*What approaches and metrics do researchers use to characterize the diversity, variety, and quantity of haptic stimuli in wrist-worn devices?
*What theories (e.g. for perception, cognition) are used in literature to support proposals and explain results? 
*How do proposals and studies of wrist-worn haptic devices approach the connection to other senses (e.g., vision, audition, augmentation, substitution)?
*What specific aspects of wrist-worn haptic devices are typically evaluated in experimental studies, and what methodologies are commonly employed?
*When devices include other actuators (e.g., sound) or sensors (e.g., blood pressure), how are they related to haptic feedback.
*What domains and situations are used to illustrate, motivate, and argue for the need and applicability of wrist-worn haptic feedback devices?
*How are personalization and adaptation approached?
*What trends can be identified in the development, adoption, and future directions of wrist-worn haptic feedback devices?

#Major terms, and alternative terms or synonyms
wrist-worn (bracelet, smartwatch)
haptics (haptics, tactile, vibrotactile, kinesthetic, cutaneous)

#Basic search query
(wrist-worn* OR bracelet OR smartwatch) AND (haptic* OR *tactile OR kinesthetic* OR cutane*)'.
coReview inclusionCriteria: '*Articles published in academic journals, conferences, compiled books, and workshops.
*Articles for which abstract and keywords are available 
*Articles written in English
*Primary sources (no reviews, mappings, surveys)'.
coReview exclusionCriteria: '*Exclude short abstracts
*Exclude proceeding summaries
*Exclude editorial notes
*Exclude book chapters (not parts of a compilation)
*Exclude entire books
*Exclude articles that fail to provide explicit discussions on the design, or implementation, or evaluation, or use of a wrist-worn haptic device
*Exclude articles that fail to provide explicit discussions on haptic feedback experienced through wrist-mounted actuators
*Exclude literature reviews, literature surveys, literature mappings
*Exclude pre-prints (e.g., still under review)'.
  
	article := Article new.
	article title: '8th EAI International Conference on Mobile Communication and Healthcare, MobiHealth 2019'.
	article abstract: ' The proceedings contain 26 papers. The special focus in this conference is on Mobile Communication and Healthcare. The topics include: Using Data Distribution Service for IEEE 11073-10207 Medical Device Communication; enabling Multimodal Emotionally-Aware Ecosystems Through a W3C-Aligned Generic Interaction Modality; A SmartBed for Non-obtrusive Physiological Monitoring During Sleep: The LAID Project; a Prototype System of Acute Stroke Type Discrimination and Monitoring Based on a Annulus Antenna Array: A Pilot Study; smart System for Supporting the Elderly in Home Environment; a Wearable Exoskeleton for Hand Kinesthetic Feedback in Virtual Reality; Development of an Intuitive EMG Interface for Multi-dexterous Robotic Hand; kinesthetic Feedback for Robot-Assisted Minimally Invasive Surgery (Da Vinci) with Two Fingers Exoskeleton; evaluating the Requirements of Digital Stress Management Systems: A Modified Delphi Study; preliminary Assessment of a Smart Mattress for Position and Breathing Sensing; mobile Application for Celiac Disease Patients’ Wellness and Support; preliminary Investigation on Band Tightness Estimation of Wrist-Worn Devices Using Inertial Sensors; artificial Intelligence at the Edge in the Blockchain of Things; continuous Wellness Tracking with Firstbeat – Usability, User Experience, and Subjective Wellness Impact; developing a Novel Citizen-Scientist Smartphone App for Collecting Behavioral and Affective Data from Children Populations; intelligent Combination of Food Composition Databases and Food Product Databases for Use in Health Applications; labeling of Activity Recognition Datasets: Detection of Misbehaving Users; mobile App for Optimizing Home Care Nursing; real-Time Continuous Monitoring of Cerebral Edema Based on a Flexible Conformal Coil Sensor; evaluating End-User Perception Towards a Cardiac Self-care Monitoring Process.'