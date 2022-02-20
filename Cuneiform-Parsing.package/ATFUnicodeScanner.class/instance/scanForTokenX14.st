generated
scanForTokenX14

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $L ifTrue: [ 
		^ self recordAndReportMatch: #( 16 ) ].
	^ self reportLastMatch