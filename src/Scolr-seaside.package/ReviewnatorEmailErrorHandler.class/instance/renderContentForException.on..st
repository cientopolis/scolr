private
renderContentForException: anException on: html

	html tbsAlert
		beDanger;
		with: [ 
			html strong: 'Apala papa ! Oh snap!'.
			html paragraph:
					' I encountered an error. I already tried to notify the admins. Be sure to export your reviews, just in case.'.
			html paragraph:
					'I am almost sure you can safely go back to the home page of the application and resume your work.'.
			html paragraph:
					'Try not to insist with the actions that took you here.' ]