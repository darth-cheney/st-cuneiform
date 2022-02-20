generated
scanForTokenX3

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $E ifTrue: [ 
		self step.
		currentCharacter == $C ifTrue: [ 
			^ self recordAndReportMatch: #( 14 ) ].
		^ self reportLastMatch ].
	currentCharacter == $S ifTrue: [ 
		self step.
		currentCharacter == $P ifTrue: [ 
			^ self recordAndReportMatch: #( 15 ) ] ].
	^ self reportLastMatch