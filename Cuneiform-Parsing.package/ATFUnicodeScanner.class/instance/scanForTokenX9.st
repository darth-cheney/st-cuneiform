generated
scanForTokenX9

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $Z ifTrue: [ 
		self step.
		currentCharacter == $L ifTrue: [ 
			^ self recordAndReportMatch: #( 8 ) ] ].
	^ self reportLastMatch