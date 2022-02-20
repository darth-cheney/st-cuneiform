generated
scanForTokenX7

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $A ifTrue: [ 
		self step.
		currentCharacter == $K ifTrue: [ 
			^ self recordAndReportMatch: #( 10 ) ] ].
	^ self reportLastMatch