testing
testIsValidEmail
	
   self assert: 'lucuma86@gmail.com' isValidEmail .
   self assert: 'lucuma.86@gmail.com' isValidEmail .
   self assert: 'Lucuma.Big.86@gmail.com' isValidEmail .
   self assert: 'Lucuma.Big.86@gmail.com' isValidEmail .
   self assert: '!#$%&''*+-/=?^_`{|}~.0123456789@gmail.com' isValidEmail .
   self assert: 'Lucuma.Big.86@!#$%&''*+-/=?^_`{|}~.0123456789.com' isValidEmail .

  self deny: 'Lucuma.Big.86@gmail@com' isValidEmail .
  self deny: 'Lucuma' isValidEmail .
  self deny: 'luc uma86@gmail.com' isValidEmail .
  self deny: 'lucuma86@gmailcom' isValidEmail .