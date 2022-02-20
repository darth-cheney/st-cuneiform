generated
scanForTokenX11

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $B ifTrue: [ 
		self step.
		currentCharacter == $Z ifTrue: [ 
			^ self recordAndReportMatch: #( 6 ) ] ].
	^ self reportLastMatch