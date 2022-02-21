generated
scanForTokenX4

	self step.
	((currentCharacter between: $a and: $w) or: [ 
		 currentCharacter between: $y and: $z ]) ifTrue: [ 
		[ 
		self recordMatch: #( 28 ).
		self step.
		(currentCharacter between: $a and: $w) or: [ 
			currentCharacter between: $y and: $z ] ] whileTrue ].
	^ self reportLastMatch