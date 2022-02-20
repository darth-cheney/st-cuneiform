generated
scanForTokenX8

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $W ifTrue: [ 
		self step.
		currentCharacter == $U ifTrue: [ 
			^ self recordAndReportMatch: #( 9 ) ] ].
	^ self reportLastMatch