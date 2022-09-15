testing
testConstructor
	self assert: articleOne title equals: 'Integration of Haptics in Agricultural Robotics'.
	self
		assert: articleOne authors
		equals:
			'Megalingam R.K., Sreekanth M.M., Sivanantham V., Kumar K.S., Ghanta S., Teja P.S., Reddy R.G.'.
	self assert: articleOne year equals: '2017'.
	self
		assert: articleOne abstract
		equals:
			'Robots can differentiate with open loop system and closed loop A1:U3 robots. We face many problems when we do not have a feedback from robots. In this research paper, we are discussing all possibilities to achieve complete closed loop system for Multiple-DOF Robotic Arm, which is used in a coconut tree climbing and cutting robot by introducing a Haptic device. We are working on various sensors like tactile, vibration, force and proximity sensors for getting feedback. For monitoring the robotic arm achieved by graphical user interference software which simulates the working of the robotic arm, send the feedback of all the real time analog values which are produced by various sensors and provide real-time graphs for estimate the efficiency of the Robot. © Published under licence by IOP Publishing Ltd.'.
	self assert: articleOne documentType equals: 'Conference Paper'.
	self assert: articleOne classifications isEmpty.
	self assert: articleOne reviews isEmpty.
	self assert: articleOne includeItCount equals: 0.
	self assert: articleOne excludeItCount equals: 0.
	self assert: articleOne undecidedCount equals: 0