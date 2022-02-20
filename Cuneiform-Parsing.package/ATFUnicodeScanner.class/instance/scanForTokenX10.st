generated
scanForTokenX10

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $A ifTrue: [ 
		self step.
		currentCharacter == $U ifTrue: [ 
			^ self recordAndReportMatch: #( 7 ) ] ].
	^ self reportLastMatch