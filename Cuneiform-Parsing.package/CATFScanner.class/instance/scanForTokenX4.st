generated
scanForTokenX4

	self recordMatch: #( 5 8 ).
	self step.
	(currentCharacter <= Character tab or: [ 
		 (currentCharacter between: Character pageUp and: Character newPage) 
			 or: [ currentCharacter >= (Character value: 14) ] ]) ifTrue: [ 
		[ 
		self recordMatch: #( 8 ).
		self step.
		currentCharacter <= Character tab or: [ 
			(currentCharacter between: Character pageUp and: Character newPage) 
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch