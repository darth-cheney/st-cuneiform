generated
scanForTokenX1

	self recordMatch: #( 29 ).
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ 
		[ 
		self recordMatch: #( 27 ).
		self step.
		currentCharacter between: $0 and: $9 ] whileTrue.
		^ self reportLastMatch ].
	(currentCharacter == $c or: [ 
		 (currentCharacter between: $f and: $h) or: [ 
			 ('kn' includes: currentCharacter) or: [ 
				 (currentCharacter between: $r and: $t) or: [ 
					 'vz' includes: currentCharacter ] ] ] ]) ifTrue: [ 
		^ self recordAndReportMatch: #( 27 ) ].
	^ self reportLastMatch