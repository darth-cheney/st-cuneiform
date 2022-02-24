generated
scanForTokenX6

	[ 
	self recordMatch: #( 8 ).
	self step.
	currentCharacter <= Character tab or: [ 
		(currentCharacter between: Character pageUp and: Character newPage) 
			or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue