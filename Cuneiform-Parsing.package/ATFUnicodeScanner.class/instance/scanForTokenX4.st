generated
scanForTokenX4

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $E ifTrue: [ 
		self step.
		currentCharacter == $A ifTrue: [ 
			^ self recordAndReportMatch: #( 11 ) ].
		^ self reportLastMatch ].
	currentCharacter == $Z ifTrue: [ 
		self step.
		currentCharacter == $L ifTrue: [ 
			^ self recordAndReportMatch: #( 12 ) ] ].
	^ self reportLastMatch